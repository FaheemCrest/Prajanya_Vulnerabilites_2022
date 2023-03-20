import requests
import json
import requests
import base64
from github import Github
import threading
from threading import Thread
import sqlite3
from time import sleep
import re

conn = sqlite3.connect('data.db')

conn.execute('''CREATE TABLE IF NOT EXISTS FLINK_VULNS
     ( REPO_NAME TEXT NOT NULL,
     CVE TEXT  NOT NULL );''')

conn.commit()
conn.close()

def get_all_repos():
  conn = sqlite3.connect('data.db')
  c=conn.cursor()
  c.execute('''SELECT REPO_NAME, FLINK_VERSION FROM FLINK;''')
  repos = c.fetchall()
  return repos

def insert(repo_name, cve):
  conn = sqlite3.connect('data.db')
  conn.execute('''INSERT INTO FLINK_VULNS (REPO_NAME, CVE) VALUES (?,?);''', (repo_name,cve));
  conn.commit()
  conn.close()


repos = get_all_repos()

for i, repo in enumerate(repos):
  print(i,'/',len(repos))
  repo_name = repo[0]
  flink_version = repo[1]
  sleep(6)
  request = requests.get(f'https://services.nvd.nist.gov/rest/json/cves/2.0?cpeName=cpe:2.3:a:apache:flink:{flink_version}:*:*:*:*:*:*:*')
  try:
    json_object = json.loads(request.content)
  except:
    continue

  for j,cve in enumerate(json_object["vulnerabilities"]):
    insert(repo_name,json_object["vulnerabilities"][j]["cve"]["id"])
    print("="*100)
    print(repo_name,json_object["vulnerabilities"][j]["cve"]["id"], flink_version)
    print("="*100)


