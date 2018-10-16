/*
  *Scala Day One*

  Here is my alternate day one, which is intended to expose you to:
  - case classes
  - `Option`
  - pattern matching

  Do:

  - Create a case class for a playing card
  - Write a function `deal` returns a list of n random cards
  - Write a function `pair` that takes that list and returns a matching pair of cards, if one exist. A pair is two cards with the same numeric value. (4 of clubs, 4 of hearts; jack of diamonds, jack of spades).
  - Output the list of cards and the pair if one exists. Avoid using the `.get` method on `Option`; try to use pattern matching instead.
*/

object App {
  def main(args: Array[String]) {
    println("Hello world")

    // Deal some cards, then see if there is a pair
    // Display the list of cards and the pair if one exists
    // Avoid calling .get on an option; try using pattern matching
  }

  // In both these methods you will be replacing all occurences of "String"
  // with your Card case class
  def deal(n: Int): Seq[String] = ???
  def pair(cards: Seq[String]): Option[(String, String)] = ???
}
