fun count(a: String): List<Int> {
    val word = a.trim().split("\\s+".toRegex())
    val wordCount = word.size
    var upperCount = 0
    var vowelCount = 0
    for (i in a) {
      if (i.isUpperCase()){
        upperCount ++;
      
    }else if(i.toLowerCase() in "aeiou"){
      vowelCount++;
      }
    }
    return listOf(wordCount , upperCount, vowelCount)
    
  }
  
  fun main() {
    val counts = count("helLO")
    
    println("Number of words: ${counts[0]}")
    println("Number of uppercase letters: ${counts[1]}")
    println("Number of vowels: ${counts[2]}")
  }