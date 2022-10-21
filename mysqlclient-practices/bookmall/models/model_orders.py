from MySQLdb import connect, OperationalError
from MySQLdb.cursors import DictCursor

def findall():
    try:
        db = conn()
        cursor = db.cursor(DictCursor)

        sql = 'select oders_no, name, price, receive_address, member_no from orders order by no desc'
        cursor.execute(sql)

        results = cursor.fetchall()

        cursor.close()
        db.close()

        return results
    except OperationalError as e:
        print(f'에러: {e}')

def insert(oders_no, name, price, receive_address, member_no):
    try:
        db = conn()
        cursor = db.cursor()

        sql = 'insert into member values(null, %s, %s, %s, %s, %s)'
        count = cursor.execute(sql, (oders_no, name, price, receive_address, member_no))

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
