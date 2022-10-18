from models import model_member, model_category, model_book

def run_list():
    results = model_member.findall()
    results = model_category.findall()
    results = model_book.findall()


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

