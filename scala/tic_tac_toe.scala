// To run:
// scala tic_tac_toe.scala
// *or*
// scalac tic_tac_toe.scala && scala App
//
// Note: scala tic_tac_toe.scala outputs strange exhaustiveness errors under
// scala 2.12.7.

sealed trait Mark
object Mark {
  object X extends Mark { override def toString = "X" }
  object O extends Mark { override def toString = "O" }
  object Empty extends Mark { override def toString = "." }
}

sealed trait GameState
object GameState {
  case object InProgress extends GameState
  case class Winner(m: Mark) extends GameState
  case object Draw extends GameState
}

case class Board(grid: Seq[Seq[Mark]]) {
  override def toString = {
    grid.map { row => row.mkString("") }.mkString("\n")
  }

  def rows: Seq[Seq[Mark]] = grid
  def cols: Seq[Seq[Mark]] = grid.transpose
  def diagonals: Seq[Seq[Mark]] = {
    // Hard-coded for a 3x3 Board
    assert(grid.length == 3, "3 rows")
    assert(grid(0).length == 3, "3 columns")
    Seq(
      Seq(grid(0)(0), grid(1)(1), grid(2)(2)),
      Seq(grid(0)(2), grid(1)(1), grid(2)(0)),
    )
  }

  def state: GameState = {
    val winningRow =
      (rows ++ cols ++ diagonals).find { squares =>
        val set = squares.toSet
        set.size == 1 && !set.contains(Mark.Empty)
      }

    winningRow match {
      case Some(row) => GameState.Winner(row(0))
      case None =>
        if (grid.flatten.toSet.contains(Mark.Empty)) GameState.InProgress else GameState.Draw
    }
  }
}

object Board {
  def apply(repr: String): Board = {
    val marks = repr.map {
      case 'X' => Mark.X
      case 'O' => Mark.O
      case ' ' | '.' => Mark.Empty
      case _ => ???
    }

    Board(
      Seq(
        marks.slice(0, 3),
        marks.slice(3, 6),
        marks.slice(6, 9)
      )
    )
  }

}

object App {
  def main(args: Array[String]) {
    val boards =
      Seq(
        Board(".OXO.X.OX"),
        Board("OX..OXX.O"),
        Board("........."),
        Board("XOXXXOOXO"),
      )



    boards.foreach { b =>
      println(b)
      println(b.state match {
        case GameState.Winner(m) => "Won by " + m
        case GameState.InProgress => "Game in progress"
        case GameState.Draw => "Draw"
      })
      println("")
    }
  }
}
