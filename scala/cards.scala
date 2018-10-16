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

import scala.util.Random

// suit could be a sealed trait
case class Card(value: Int, suit: String) {
  override def toString = {
    val v = value match {
      case 13 => "K"
      case 12 => "Q"
      case 11 => "J"
      case i => i.toString
    }
    s"${v}${suit}"
  }
}

object App {
  def main(args: Array[String]) {

    val cards = deal(5)
    println(cards)

    pair(cards) match {
      case Some((c1, c2)) => println("There was a pair:" + c1 + " and " + c2)
      case None => println("There was no pair")
    }
    // Deal some cards, then see if there is a pair
    // Display the list of cards and the pair if one exists
    // Avoid calling .get on an option; try using pattern matching
  }

  // In both these methods you will be replacing all occurences of "String"
  // with your Card case class
  def deal(n: Int): Seq[Card] = {
    val suits = Seq("H", "S", "D", "C")

    (1 to n).map { _ =>
      val suit = suits(Random.nextInt(suits.size))
      val value = Random.nextInt(12) + 1
      Card(value, suit)
    }
  }

  def pair(cards: Seq[Card]): Option[(Card, Card)] = {

  }
}
