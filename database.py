#!/usr/bin/env python
# -*- coding: utf-8 -*-

import MySQLdb

class Database():
    db = None
    
    def __init__(self, settings):
        self.db = MySQLdb.connect(
            host=settings['host'],
            db=settings['database'],
            user=settings['user'],
            passwd=settings['password'],
            port=3306)

        cursor = self.db.cursor()
        cursor.execute("SHOW TABLES;")
        records = cursor.fetchall()

        tables = ['current_info','totals','totals_records']
        tblCounter = 0
        for tbl in records:
            if tbl[0] in tables:
                tblCounter += 1
        if tblCounter != len(tables):
            self.firstSetup()

    def firstSetup(self):
        with open('initialize.sql') as f:
            cursor = self.db.cursor()
            cursor.execute(f)

    def __del__(self):
        self.db.close()