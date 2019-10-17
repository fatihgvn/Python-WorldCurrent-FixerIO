#!/usr/bin/env python
# -*- coding: utf-8 -*-

# http://data.fixer.io/api/latest?access_key=3dbf1b2bc69f02ee7b1271afb9748f15

import urllib, json
from database import Database

settings = None

with open('settings.json') as json_file:
    settings = json.load(json_file)

db = Database(settings)


