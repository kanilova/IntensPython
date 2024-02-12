import math  #импортируем модуль для математических действий

#задача 1

#ввод x и y с клавиатуры
x = float(input('Введите x: '))
y = float(input('Введите y: '))

#вычисление q
q = 3 * math.cos(math.pi * x) - abs(2-y) # 3cospix - |2-y|

#вычисление z
z = (q + ((2 + q) / (q**2 + 3))) / (1 / (math.sqrt(q**2 + 8)))

print(f'Значение z = {z}')
