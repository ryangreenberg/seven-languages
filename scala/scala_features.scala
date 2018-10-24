

object App {
  implicit class MyString(val s: String) extends AnyVal {
    def greet = "Hello, " + s
  }


  def main(args: Array[String]) {
    // Adding implicit methods
    println("Ryan".greet)

    // Triple-quote strings
    // .r methods to convert a string to a regex
    val pattern = """[0-9]+""".r
    val input = """
    |123
    |abc
    |456
    |def
    """.stripMargin.trim
    val matches = pattern.findAllIn("123\nabc\n456").toList

    println("Input:")
    println(input)
    println("Regex:")
    println(pattern.regex)
    println("Matches:")
    println(matches)

    // pattern matching on a regex
    // "a29b" match {
    //   case pattern(d) => println(s"Found number ${d}")
    //   case _ => println("No number")
    // }

    // Value classes
    val nums = Seq(1,2,3,4,5)
    println(nums.sum)

    val letters = Seq("a", "b", "c")
    // error: could not find implicit value for parameter num: Numeric[String]
    // println(letters.sum)


  }
}

