fun findMax(a: List<Int>): Int {
    var max = 0
    for(i in a) {
      
      if (i > max){
        max = i
      }
    }
    return max
  }
  fun filterEvenNumbers(a: List<Int>): List<Int>{
    val lst: MutableList<Int> = mutableListOf()
    for (i in a){
      if (i % 2 == 0){
        lst.add(i)
      }
    }
    return lst
  }
  
  fun calculateAverage(a : List<Int>):Double {
    var sum = 0.00
    for (i in  a ) {
      sum+=i
    }
    val len =  a.size  
    val avg = sum / len
    return avg
  }
  fun main() {
    
    val lst = listOf(1,2,3,4)
    
    val max = findMax(lst)
    val even = filterEvenNumbers(lst)
    var avg = calculateAverage(lst)
    
    println(max)
    println(even)
    println(avg)
  }