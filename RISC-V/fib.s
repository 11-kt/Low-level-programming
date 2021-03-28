# fib.s
.text
fib:
 .globl fib
 li a3, 1 # Переменная first
 li a4, 0 # Переменная second
 li a5, 0 # Переменная third
 beq x0, a2, loop_exit # Проверка. Необходимо ли нам расчитать нулевой член последовательности

loop: # Метка для перехода к началу цикла
 add a5, a3, a4 # t = f + s
 mv a3, a4 # f = s
 mv a4, a5 # s = t
 addi a2, a2, -1 # Условие цикла
 blt x0, a2, loop # Переход к метке
loop_exit:
 li a0, 10 # Для возврата со статусом 0
 ret
