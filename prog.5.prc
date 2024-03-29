# Дан массив, значения которого заданы случайным образом. Переписать его элементы в
# другой массив такого же размера следующим образом: сначала должны идти все
# отрицательные элементы, а затем все остальные. Использовать только один проход по
# исходному массиву.

# Решение:
#
# В условии сказано, что можно сделать ТОЛЬКО ОДИН проход по исходному массиву,
# для переписи значений в массив такого же размера, но нету
# условия о том, что можно использовать исключительно 2 массива, поэтому
# мы создаем 2 дополнительных массива, делаем проход по исходному массиву
# отрицательные числа записываем в массив для отрицательных,
# положительные числа записываем в массив для положительных,
# в конце просто объединяем эти массивы и все, лол
# а еще там не сказано, что числа должны располaгаться по возрастанию/убыванию
# поэтому мы просто отделили отрицательные от положительных

import random

# Генерация случайного массива
arr = [random.randint(-10, 10) for _ in range(10)]

# Создание двух пустых массивов
neg_arr = []
pos_arr = []

# Перепись элементов в новые массивы
for num in arr:
    if num < 0:
        neg_arr.append(num)
    else:
        pos_arr.append(num)

print("Исходный массив:", arr)
print("Новый массив:", neg_arr + pos_arr)
