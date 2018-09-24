# 2D array
# This feels like cheating
sum2d := method(xs, xs flatten sum)
xs := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))
sum2d(xs)
# ==> 45


List myAverage := method(self sum / self size)
# Io> list(1,2,3) myAverage
# ==> 2
# Io> list(1,2,10) myAverage
# ==> 4.333333333333333
#

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
