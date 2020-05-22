# # 哈士奇  共同属性具体数值
# name1 = "hsq"
# size1 = "big"
# color1 = "wb"

# # 松狮
# name2 = "ss"
# size2 = "mid" 
# color2 = "brown"

# # 吉娃娃
# name3 = "jww"
# size3 = "small"
# color3 = "white"

# 所有狗  共同属性
# class Dog
#     name
#     size
#     color

# 哈士奇 属于 所有狗
class Dog:

    def __init__(self, iname, isize, icolor):
        self.name = iname
        self.size = isize
        self.color = icolor
    
    def bark(self):
        print("wangwang")

class Category_Dog(Dog):

    def __init__(self, name, size, color, cat_name):
        super()
        self.cat_name = cat_name
    
    def cat_bark(self):
        super().bark()
        print("cat_wangwang")

dog3 = Category_Dog('Tom', 'big', 'b', 'quanke')
dog3.bark()
dog3.cat_bark()

# dog1 = Dog('hsq', 'big', 'w&b')
# dog2 = Dog('jww', 'small', 'white')

# print(dog1.name, dog1.size, dog1.color)
# dog1.bark()
# print(dog2.name, dog2.size, dog2.color)
# dog2.bark()

from a import *

# in a
bark
name

# in b.py
from a import *
bark
name

name 
bark