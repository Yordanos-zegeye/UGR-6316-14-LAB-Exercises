fun main() {
    println("Enter Price: ")
    val price = readLine()!!.toDouble()
    println("Enter Discount")
    var discount = readLine()!!.toDouble()
    val treshold = 0.5 
    var range = 0..1
    if (discount > 0.5){
      println("Discount too high")
      discount = treshold
      val discount_price = price * discount
      val finalprice = price - discount_price
      
      println(finalprice)
    }else{
      val discount_price = price * discount
      val finalprice = price - discount_price
      
      println(finalprice)
    }
    
    
  }