# Day 1

# IO website:
# Sample code (from Io website via Wayback Machine):
# https://web.archive.org/web/20080207212635/http://iolanguage.com/about/samplecode/

# Love that it has both print and println -- every language should do this.
#
# Io> "Hello world" print
# Hello world==> Hello world
# Io> "Hello world" println
# Hello world
# ==> Hello world
#
# Lobby is a nifty name and idea

# -----------------------------------------------------------------------------

# Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed?
# Io is strongly typed because it does not coerce the string "one", to a number.
#
# Io> 1 + 1
# ==> 2
# Io> 1 + "one"

#   Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
#   ---------
#   message '+' in 'Command Line' on line 1

# -----------------------------------------------------------------------------

# Is 0 true or false? What about the empty string? Is nil true or false? Support
# your answer with code.

# 0: true
# empty string: true
# nil: false

# Io> true and true
# ==> true
# Io> true and false
# ==> false
#
# Io> true and 0
# ==> true
# Io> true and ""
# ==> true
# Io> true and nil
# ==> false

# -----------------------------------------------------------------------------

# How can you tell what slots a prototype supports?
# send the slotNames message to the object:

# Io> Lobby slotNames
# ==> list(exit, Lobby, Protos, _, set_, forward)

# -----------------------------------------------------------------------------

# What is the difference between = (equals), := (colon equals), and ::= (colon
# colon equals)? When would you use each one?

# = equals assigns a value to an *existing slot*
# := creates a slot on the lhs with the value on the rhs
# ::=

# From https://iolanguage.org/guide/guide.html
# > Io has three assignment operators:
# > operator  action
# > ::= Creates slot, creates setter, assigns value
# > :=  Creates slot, assigns value
# > = Assigns value to slot if it exists, otherwise raises exception

# Not sure that I get the difference between ::= and :=

# More convention:
#
# When an object is cloned, its "init" slot will be called if it has one.

# -----------------------------------------------------------------------------

# Io> person := Object clone
# ==>  Object_0x7f841211cae0:

# Io> person name := "Ryan"
# ==> Ryan

# Io> person name = "Me"
# ==> Me

# Io> person talk := method(person name println)
# ==> method(
#     person name println
# )
# Io> person talk
# Me

# From https://iolanguage.org/guide/guide.html#Objects-Blocks
# > A block is the same as a method except it is lexically scoped. That is,
# > variable lookups continue in the context of where the block was created
# > instead of the target of the message which activated the block. A block can be
# > created using the Object method block(). Example of creating a block:

# b := block(a, a + b)

# -----------------------------------------------------------------------------

# Io has mutable collections (list, map)

# -----------------------------------------------------------------------------

# It was neat to discover the CLI object via the exit method in the Lobby:

# Io> Lobby slotNames
# ==> list(exit, Lobby, Protos, _, set_, forward)
#
# Io> Lobby getSlot("exit")
# ==> # [unlabeled]:0
# method(
#     CLI stop
# )
# Io> CLI
# ==>
# usage: io [-h | -e expr | -i file.io, file.io, ...| file.io arg, arg, ... | --version]

# options:
#   --version   print the version of the interpreter and exit
#   -h          print this help message and exit
#   -e          eval a given expression and exit
#   -i          run the interpreter, after processing the files passed

# ➜  seven-languages git:(exercises) io
# Io 20151111
# Io> CLI slotNames
# ==> list(doLine, ioHistoryFile, writeCommandResult, setPrompt, doIorc, help, isRunning, stop, type, setContext, errorMessage, saveHistory, setContinuedLinePrompt, loadHistory, commandLineLabel, doFile, continuedLinePrompt, setIsRunning, setCommandLineLabel, setOutPrompt, run, prompt, outPrompt, version, knownErrors, context, interactive, writeWelcomeBanner, lineReader)

