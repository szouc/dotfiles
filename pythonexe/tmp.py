
movies = [{"name": "教父2", "point": 9.2, "proverb": "优雅的孤独"},
          {"name": "狮子王", "point": 9.0, "proverb": "动物版《哈姆雷特》"},
          {"name": "教父", "point": 9.2, "proverb": "优雅的孤独"},
          {"name": "狮子王2", "point": 9.0, "proverb": "动物版《哈姆雷特》"}]

for i in movies:
    print('{1:{0}<10}{2:{0}^4}{3:{0}<15}{4}'.format(
        chr(61), i["name"], i["point"], i["proverb"], len(i["name"].encode("gbk")), chr(95)))
