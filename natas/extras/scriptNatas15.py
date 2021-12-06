#!/usr/bin/env python3

import requests
import re
from string import *

username = 'natas15'
password = 'AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J'

url = 'http://natas15.natas.labs.overthewire.org/index.php'

session = requests.Session()
res = session.post(url, data = {"username":"john"}, auth = (username, password))

content = res.text

print (content)
