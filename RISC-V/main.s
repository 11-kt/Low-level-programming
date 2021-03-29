# main.s
.data
string1: .string "Enter the member of the Fibonacci sequence required for calculation: "
string2: .string "\nCalculated term of the Fibonacci sequence: "

.text

main:
.globl main
 li a0, 4
 la a1, string1 # Выводим сообщение 1
 ecall
 li a0, 5 # Считываем (с консоли) и записываем в регистр a0 значение члена последовательности, который необходимо рассчитать
 ecall
 mv a2, a0 # Переносим (из регистра a0) в регистр a2 необходимый для расчета член последовательности Фибоначчи
 call fib
finish:
 li a0, 4 
 la a1, string2 # Вывод сообщения 2
 ecall
 li a0, 1
 mv a1, a5 # Вывод результата
 ecall
 li a0, 10
 ecall # останов при x10 = 10