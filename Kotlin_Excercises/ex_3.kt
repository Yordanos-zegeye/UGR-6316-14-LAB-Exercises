fun main() {
    println("Enter Grade: ")
    
    val grade = readLine()!!.toInt();
    
    val range = 0..100
    
    if(grade in range){
      when(grade){
      in 90..100 -> println("A")
      in 80..89 -> println("B")
      in 70..79 -> println("C")
      in 60..69 -> println("D")
      in 0..60 -> println("F")
    }
    }else {
      println("Enter Valid")
    }
    
    
    
  }