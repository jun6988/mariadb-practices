from MySQLdb import connect, OperationalError
from MySQLdb.cursors import DictCursor

def findall():
    try:
        db = conn()
        cursor = db.cursor(DictCursor)

        sql = 'select c.book_no, a.title, c.quantity from book a, orders b, orders_book c where a.no = c.book_no and b.no = c.orders_no'
        cursor.execute(sql)

        results = cursor.fetchall()

        cursor.close()
        db.close()

        return results
    except OperationalError as e:
        print(f'에러: {e}')

def insert(orders_no, book_no, quantity):
    try:
        db = conn()
        cursor = db.cursor()

        sql = 'insert into orders_book values(%s, %s, %s)'
        count = cursor.execute(sql, (orders_no, book_no, quantity))

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


