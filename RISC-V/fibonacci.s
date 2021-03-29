# fibonacci.s
.globl __start
.data
string1: .string "Enter the member of the Fibonacci sequence required for calculation: "
string2: .string "\nCalculated term of the Fibonacci sequence: "
.text
__start:
 li a0, 4
 la a1, string1 # Выводим сообщение 1
 ecall
 li a0, 5 # Считываем (с консоли) и записываем в регистр a0 значение члена последовательности, который необходимо рассчитать
 ecall
 mv a2, a0 # Переносим (из регистра a0) в регистр a2 необходимый для расчета член последовательности Фибоначчи
 li a3, 1 # Переменная first
 li a4, 0 # Переменная second
 li a5, 0 # Переменная third
 beq x0, a2, finish # Проверка. Необходимо ли нам рассчитать нулевой член последовательности

loop: # Метка для перехода к началу цикла
 add a5, a3, a4 # t = f + s
 mv a3, a4 # f = s
 mv a4, a5 # s = t
 addi a2, a2, -1 # Условие цикла
 blt x0, a2, loop # Переход к метке loop

finish: # Метка конца программы
 li a0, 4 
 la a1, string2 # Вывод сообщения 2
 ecall
 li a0, 1
 mv a1, a5 # Вывод результата
 ecall
 li a0, 10
 ecall # останов при x10 = 10