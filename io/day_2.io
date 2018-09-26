# The OperatorTable is pretty cool
#
#    Io> OperatorTable addOperator("xor", 11)
#    ==> OperatorTable_0x7fe29c652f10:
#    Operators
#      0   ? @ @@
#      1   **
#      2   % * /
#      3   + -
#      4   << >>
#      5   < <= > >=
#      6   != ==
#      7   &
#      8   ^
#      9   |
#      10  && and
#      11  or xor ||
#      12  ..
#      13  %= &= *= += -= /= <<= >>= ^= |=
#      14  return
#
#    Assign Operators
#      ::= newSlot
#      :=  setSlot
#      =   updateSlot
#
#    To add a new operator: OperatorTable addOperator("+", 4) and implement the + message.
#    To add a new assign operator: OperatorTable addAssignOperator("=", "updateSlot") and implement the updateSlot message.

# -----------------------------------------------------------------------------

# A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of
# the two numbers that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. Write a
# program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3. As a
# bonus, solve the problem with recursion and with loops.

# fibonacci written recursively (without memoization)
fib := method(i, if(i == 1 or i == 2, 1, fib(i - 1) + fib(i - 2)))

# fibonacci written with a loop
# fib_loop := method(num, i = 0; j = 1; for(x, 1, num, ))


# How would you change / to return 0 if the denominator is zero?


Do:
How would you change / to return 0 if the denominator is zero?
Write a program to add up all of the numbers in a two-dimensional array.
Add a slot called myAverage to a list that computes the average of all the numbers in a list. What happens if there are no numbers in a list? (Bonus: Raise an Io exception if any item in the list is not a number.)
Write a prototype for a two-dimensional list. The dim(x, y) method should allocate a list of y lists that are x elements long. set(x, y, value) should set a value, and get(x, y) should return that

