from models import model_member, model_category, model_book
from bookmall.models import model_category, model_book, model_member, model_cart, model_orders

print("--회원 리스트--")
model_member.insert('이성준', '01020937085', 'jun6988@naver.com', '123123')
model_member.insert('고길동', '01012345678', 'gildong@naver.com', '456789')

results = model_member.findall()
for index, result in enumerate(results):
    print(f'{index + 1} : {result["name"]} , {result["phone_number"]} , {result["email"]}, {result["password"]}')




# def run_list():
#     results = model_member.findall()
#     results = model_category.findall()
#     results = model_book.findall()


# print("--회원 리스트--")
#
# print("--카테고리 리스트--")
#
# print("--상품 리스트--")
#
# print("--카트 리스트--")
#
# print("--주문 리스트--")
#
# print("--주문 도서 리스트--")

