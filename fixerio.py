#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import urllib, json, urllib.request, sys
from database import Database
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-g","--getNew", help="add new current record", action="store_true")
parser.add_argument("-u","--updateHistory", help="Update last day history", action="store_true")
args = parser.parse_args()

settings = None

with open('settings.json') as json_file:
    settings = json.load(json_file)

if args.getNew or len(sys.argv) == 1:

    apiurl = "http://data.fixer.io/api/latest?access_key=%s" % (settings['token'])

    db = Database(settings)

    with urllib.request.urlopen(apiurl) as url:
        data = json.loads(url.read().decode())

        db.addRecord(data)

elif args.updateHistory:
    print("update history")