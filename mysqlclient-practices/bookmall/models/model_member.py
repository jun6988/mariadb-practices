from MySQLdb import connect, OperationalError
from MySQLdb.cursors import DictCursor

def findall():
    try:
        db = conn()
        cursor = db.cursor(DictCursor)

        sql = ''
        cursor.execute(sql)

        results = cursor.fetchall()

        cursor.close()
        db.close()

        return results
    except OperationalError as e:
        print(f'에러: {e}')

def insert():
    try:
        db = conn()
        cursor = db.cursor()

        sql = ''
        count = cursor.execute()

        db.commit()
        cursor.close()
        db.close()

        return count == 1
    except OperationalError as e:
        print(f'에러: {e}')

def deletebyemail():
    try:
        db = conn()
        cursor = db.cursor()

        sql = ''
        count = cursor.execute()

        db.commit()
        cursor.close()
        db.close()

        return count == 1
    except OperationalError as e:
        print(f'에러: {e}')

def conn():
    db = connect(
        user='bookmall',
        password='bookmall',
        host='127.0.0.1',
        port=3306,
        db='bookmall',
        charset='utf8')

    return db