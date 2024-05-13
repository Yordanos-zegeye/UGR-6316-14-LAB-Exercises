fun main() {
    val strings = listOf("hello", "world", "kotlin", "programming")
    val numbers = listOf(10, 20, 30, 40, 50)

    val uppercasedStrings = applyUppercase(strings)
    println("Uppercased strings: $uppercasedStrings")

    val filteredNumbers = filterNumbers(numbers, 25)
    println("Numbers greater than 25: $filteredNumbers")

    val sumOfNumbers = calculateSum(numbers)
    println("Sum of numbers: $sumOfNumbers")
}

fun applyUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterNumbers(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}
