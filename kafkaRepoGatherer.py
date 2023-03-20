import requests
import base64
from github import Github
import threading
from threading import Thread
import sqlite3
from time import sleep
import re

conn = sqlite3.connect('data.db')

conn.execute('''CREATE TABLE IF NOT EXISTS kafka
		 ( REPO_NAME TEXT NOT NULL,
		 kafka_VERSION TEXT 	NOT NULL,
		 LAST_PUSH TEXT 	NOT NULL,
		 GIT_URL TEXT NOT NULL);''')

conn.execute('''CREATE TABLE IF NOT EXISTS SEARCHED_KAFKA
		 ( REPO_NAME TEXT NOT NULL);''')

conn.commit()
conn.close()

def insert_into_db(repo_name, kafka_version, last_push, git_url):
	conn = sqlite3.connect('data.db')
	conn.execute('''INSERT INTO kafka (REPO_NAME,kafka_VERSION,LAST_PUSH,GIT_URL) VALUES (?, ?, ?, ?)''', (repo_name, kafka_version, last_push, git_url));
	conn.commit()
	conn.close()

def insert_into_searched(repo_name):
	conn = sqlite3.connect('data.db')
	conn.execute('''INSERT INTO SEARCHED_KAFKA (REPO_NAME) VALUES (?)''', (repo_name,));
	conn.commit()
	conn.close()

def check_if_exists(repo_name):
	conn = sqlite3.connect('data.db')
	c=conn.cursor()
	c.execute('''SELECT * FROM kafka WHERE REPO_NAME=?;''', (repo_name,))
	exists = c.fetchall()
	if len(exists)==0:
		return False
	else:
		return True

def check_if_searched(repo_name):
	conn = sqlite3.connect('data.db')
	c=conn.cursor()
	c.execute('''SELECT * FROM SEARCHED_KAFKA WHERE REPO_NAME=?;''', (repo_name,))
	exists = c.fetchall()
	if len(exists)==0:
		return False
	else:
		return True

g = Github("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")

#Gets required data from a repository using kafka
def get_kafka_version_maven(file):
	kafka_version = ""
	try:
		string = file.decoded_content.decode('utf-8')
		pattern = r"<[^>//]*kafka[^>//]*version[^>//]*>"
		kafka_version = re.split(pattern, string)[1].split("</",1)[0].strip()
		return kafka_version
	except:
		pass
	
	try:
		string = file.decoded_content.decode('utf-8')
		pattern = r"<dependency>\s*<groupId>.*kafka.*</groupId>\s*<artifactId>.*kafka.*\s*</artifactId>\s*<version>"
		kafka_version = re.split(pattern, string)[1].split("</",1)[0].strip()
		return kafka_version
	except:
		return ""

def get_kafka_version_gradle_or_ant(file):
	kafka_version = ""
	try:
		string = file.decoded_content.decode('utf-8')
		pattern = r"kafka.*version\s*="
		kafka_version = re.split(pattern, string,1,re.IGNORECASE)[1].split("\n",1)[0].strip()
		return kafka_version
	except:
		pass
	try:
		string = file.decoded_content.decode('utf-8')
		pattern = r"version.*kafka\s*="
		kafka_version = re.split(pattern, string,1,re.IGNORECASE)[1].split("\n",1)[0].strip()
		return kafka_version
	except:
		return ""

results = g.search_repositories("kafka language:java license:mit  license:apache-2.0  license:gpl")
for i, repo in enumerate(results):
	repoName = repo.full_name
	
	if check_if_exists(repoName) == True:
		continue

	if check_if_searched(repoName) == True:
		continue

	insert_into_searched(repoName)

	#sleep(1)

	kafka_version = ""

	try:
		file = repo.get_contents("pom.xml")
		kafka_version = get_kafka_version_maven(file)
	except:
		try:
			file = repo.get_contents("gradle.properties")
			kafka_version = get_kafka_version_gradle_or_ant(file)
		except:
			try:
				file = repo.get_contents("build.gradle")
				kafka_version = get_kafka_version_gradle_or_ant(file)
			except:
				try:
					file = repo.get_contents("ivy/libraries.properties")
					kafka_version = get_kafka_version_gradle_or_ant(file)
				except:
					continue

	if kafka_version == "":
		continue

	# Define the regex pattern to match the version number
	pattern = r'\d+\.\d+\.\d+'

	# Use the re.search() function to find the version number in the input string
	match = re.search(pattern, kafka_version)

	# Check if a match was found
	if match:
	    # Extract the version number from the match object
	    version_number = match.group()
	else:
	    continue

	insert_into_db(repoName, version_number, repo.pushed_at, repo.git_url)
	print("="*100)
	print(repoName)
	print("kafka_VERSION:", version_number)
	print("="*100)
