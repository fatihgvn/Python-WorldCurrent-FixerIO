#!/usr/bin/env python
# -*- coding: utf-8 -*-

import urllib, json, urllib.request
from database import Database

settings = None

with open('settings.json') as json_file:
    settings = json.load(json_file)

apiurl = "http://data.fixer.io/api/latest?access_key=%s" % (settings['token'])

db = Database(settings)

with urllib.request.urlopen(apiurl) as url:
    data = json.loads(url.read().decode())

    db.addRecord(data)