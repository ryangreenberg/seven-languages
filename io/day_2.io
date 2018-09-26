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
# Write a program to add up all of the numbers in a two-dimensional array.

# 2D array
# This feels like cheating
sum2d := method(xs, xs flatten sum)
xs := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))
sum2d(xs)
# ==> 45

# Add a slot called myAverage to a list that computes the average of all the
# numbers in a list. What happens if there are no numbers in a list? (Bonus:
# Raise an Io exception if any item in the list is not a number.)

List myAverage := method(self sum / self size)
# Io> list(1,2,3) myAverage
# ==> 2
# Io> list(1,2,10) myAverage
# ==> 4.333333333333333
#


# Write a prototype for a two-dimensional list. The dim(x, y) method should
# allocate a list of y lists that are x elements long. set(x, y, value) should
# set a value, and get(x, y) should return tha
Matrix := Object clone
Matrix xy := list()
Matrix dim := method(
  x, y,
  m := Matrix clone;
  xs := list();
  ys := list();
  for(i, 0, x, xs append(0));
  for(i, 0, y, ys append(xs clone));
  m xy = ys;
  m
)
Matrix get := method(x, y, self xy at(y) at(x))
Matrix set := method(x, y, value, self xy at(y) atPut(x, value))

m := Matrix dim(5, 5) println
m get(0, 0) println
m set(0, 0, 10)
m get(0, 0) println

# Pretty nice reflection:
# Lobby
#
# Io> Lobby
# ==>  Object_0x7fdc7151b000:
#   Lobby            = Object_0x7fdc7151b000
#   Protos           = Object_0x7fdc7151af20
#   _                = Object_0x7fdc7151b000
#   exit             = method(...)
#   forward          = method(...)
#   l                = list()
#   set_             = method(...)
#   sum2d            = method(xs, ...)
#   xs               = list(list(1, 2, 3), list(4, 5, 6), li...
#
#
# ...
#
# Io> Protos
# ==>  Object_0x7fdc7151af20:
#   Addons           = Object_0x7fdc7151b4d0
#   Core             = Object_0x7fdc7151af90
#
# Io> Protos Core
# ==>  Object_0x7fdc7151af90:
#   Addon            = Addon_0x7fdc7168ee50
#   AddonLoader      = AddonLoader_0x7fdc7166ae00
#   Block            = method(...)
# ...
#   Number           = 0
#   Object           = Object_0x7fdc71502c60
#
# Io> Number slotNames
# ==> list(floor, floatMax, atan2, floatMin, unsignedIntMax, asHex, >>, |, isGraph, shiftLeft, isPrint, shortMin, shortMax, factorial, ceil, squared, atan, asJson, asString, %, asUint32Buffer, cos, bitwiseAnd, bitwiseXor, justSerialized, isNan, at, tan, isUppercase, isControlCharacter, cubed, clip, sin, abs, -, isEven, +, isInASequenceSet, isDigit, acos, isOdd, asCharacter, permutations, toBase, minMax, constants, pow, asSimpleString, exp, repeat, roundDown, between, log10, &, integerMin, bitwiseOr, asOctal, longMin, log2, isSpace, asUppercase, bitwiseComplement, toBaseWholeBytes, isLowercase, log, max, <<, isLetter, combinations, isAlphaNumeric, asBuffer, round, min, asNumber, longMax, sqrt, negate, ^, asLowercase, isPunctuation, toggle, **, asin, /, *, shiftRight, integerMax, isHexDigit, asBinary, unsignedLongMax, mod)