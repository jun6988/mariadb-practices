from MySQLdb import connect, OperationalError
from MySQLdb.cursors import DictCursor

def findall():
    try:
        db = conn()
        cursor = db.cursor(DictCursor)

        sql = 'select name, phone_number, email, password from member order by no desc'
        cursor.execute(sql)

        results = cursor.fetchall()

        cursor.close()
        db.close()

        return results
    except OperationalError as e:
        print(f'에러: {e}')

def insert(name, phone_number, email, password):
    try:
        db = conn()
        cursor = db.cursor()

        sql = 'insert into member values(null, %s, %s, %s, %s)'
        count = cursor.execute(sql, (name, phone_number, email, password))

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
