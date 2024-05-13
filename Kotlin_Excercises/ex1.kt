fun main(){
  println("Enter num")
  val a = readLine()!!.toDouble()
  println("Enter num")
  val b = readLine()!!.toDouble()
  println("enter op")
  val op = readLine()!!
  
  var res = 0
  if (op == "+"){
    val res = a+b;
    println("result: " + res)
  }else if (op == "-"){
    val res = a-b;
    println("result: " + res)
  }else if (op == "/"){
    val res = a/b;
    println("result: " + res)
  }else if (op == "*"){
    val res = a*b;
    println("result: " + res)
  }
  
}