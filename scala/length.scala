def length[A](l: List[A]): Int = l match {
  case Nil => 0
  case head :: tail => 1 + length(tail)
}