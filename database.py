#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import MySQLdb, re

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
            self.exec_sql_file(self.db.cursor(),'initialize.sql')

    def __del__(self):
        self.db.close()

    def addRecord(self, data):
        if(data['success'] == True):
            sql = "INSERT INTO totals SET t_timestamp=%d, t_base='%s', t_date='%s';" % (data['timestamp'], data['base'], data['date'])

            cursor = self.db.cursor()

            try:
                cursor.execute(sql)
                lsatid = cursor.lastrowid

                for short, value in data['rates'].items():
                    sql = "INSERT INTO totals_records SET total_id=%d, name='%s', value=%f;" % (lsatid, short, value)
                    cursor.execute(sql)

            except Exception as ex:
                print(ex)

            self.db.commit()
            
        else:
            print("not success")

    def updateHistory(self, date):
        sql = "SELECT name, sum(value), count(name) FROM totals_records WHERE created_at>='%s' GROUP BY name HAVING COUNT(*) >1;" % (date)

        cursor = self.db.cursor()

        try:
            cursor.execute(sql)
            records = cursor.fetchall()
            for h in records:
                sql = "INSERT INTO totals_history SET name='%s', value=%f, t_date='%s';" % (h[0], (h[1]/h[2]), date)
                cursor.execute(sql)

        except Exception as ex:
            print(ex)

    def exec_sql_file(self, cursor, sql_file):
        statement = ""

        for line in open(sql_file):
            if re.match(r'--', line):  # ignore sql comment lines
                continue
            if not re.search(r';$', line):  # keep appending lines that don't end in ';'
                statement = statement + line
            else:  # when you get a line ending in ';' then exec statement and reset for next statement
                statement = statement + line
                #print "\n\n[DEBUG] Executing SQL statement:\n%s" % (statement)
                try:
                    cursor.execute(statement)
                except:
                    print("\n[WARN] MySQLError during execute statement")

                statement = ""
        self.db.commit()