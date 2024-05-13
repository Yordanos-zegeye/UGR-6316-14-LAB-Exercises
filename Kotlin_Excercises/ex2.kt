fun main() {
    val a = readLine()!!.toDouble()
    val unit = readLine()!!
    
    var res = 0.00
    if (unit == "Km" || unit == "km"){
      res = a / 1000.00
      println("$res m" )
    }else if (unit == "m" || unit == "meter"){
      res = a * 1000.00
      println("$res km")
    }
    
  }