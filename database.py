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

        for table in records:
            print(table)
            # if table in tables
        
    def firstSetup(self):
        cursor = self.db.cursor()
        with open('initialize.sql') as f:
            cursor.execute(f)
        self.db.commit()

    def __del__(self):
        self.db.close()