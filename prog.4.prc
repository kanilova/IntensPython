# Даны натуральные числа а и b, обозначающие соответственно числитель и знаменатель
# дроби. Сократить дробь, т. е. найти такие натуральные числа р и q, не имеющие общих
# делителей, что p/q = a/b.


# Решение:
#
# много лишних слов в условии, по сути нам надо просто сократить дробь и всё
# Используем алгоритм Евклида с прошлой задачи и находим НОД
# Делим числитель и знаменатель на НОД и получаем сокращенную дробь

def nod(x, y):  # создание функции которая принимает 2 аргумента (числа)
    # создаем цикл, который будет работать до тех пор, пока одно из чисел не будет равно нулю
    while x != 0 and y != 0:
        if x > y:   # условие "большее число делим на меньшее"
            x = x % y  # присваиваем к x остаток от деления x на y
        else:
            y = y % x
    return x + y  # возвращаем НОД


a = int(input('a: '))
b = int(input('b: '))

p = a / nod(a, b)
q = b / nod(a, b)

print(f'{p}/{q}={a}/{b}')  # выводим результат
