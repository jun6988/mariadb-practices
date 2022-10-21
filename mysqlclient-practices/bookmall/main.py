from bookmall.models import model_member
from bookmall.models import model_category
from bookmall.models import model_book
from bookmall.models import model_orders
from bookmall.models import model_cart


print('--회원 리스트--')
model_member.insert(name='이성준', phone_number='01020937085', email='jun6988@naver.com', password='123123' )
model_member.insert(name='고길동', phone_number='01012345678', email='gildong@naver.com', password='456789')
results= model_member.findall()
for index, result in enumerate(results):
    print(f'{index+1}:{result["name"]}, {result["phone_number"]}, {result["email"]}, {result["password"]}')


print('--카테고리 리스트--')
model_category.insert('소설')
model_category.insert('수필')
model_category.insert('예술')
results= model_category.findall()
for index, result in enumerate(results):
    print(f'{index+1}:{result["name"]}')

print('--상품 리스트--')
model_book.insert('1', '어린왕자', '20000')
model_book.insert('2', '데미안','30000')
model_book.insert('3', '파이썬', '40000')
results= model_book.findall()
for index, result in enumerate(results):
    print(f'{index+1}:{result["category"]}, 제목:{result["title"]}, 가격:{result["price"]}')

print('--카트 리스트--')
model_cart.insert(1,1,1)
model_cart.insert(2,2,2)
results= model_cart.findall()
for index, result in enumerate(results):
    print(f'{index+1}:제목:{result["title"]}, 수량:{result["amount"]}, 가격:{result["price"]}')
#
#
print('--주문 리스트--')
model_orders.insert('1', '14400', '서울시', 1)
results=model_orders.findall()
for index, result in enumerate(results):
    print(f'{index+1}:주문번호:{result["orders_no"]}, {result["name"]}, {result["email"]}, 결제금액:{result["price"]}, {result["receive_address"]}')
#
# print('--주문도서 리스트--')
# model_order.insert_order_book(1,1,1)
# model_order.insert_order_book(2,1,2)
# results= model_order.findall_order_book()
# for index, result in enumerate(results):
#     print(f'{index+1}:도서번호:{result["no"]}, {result["title"]}, 수량:{result["amount"]}')
