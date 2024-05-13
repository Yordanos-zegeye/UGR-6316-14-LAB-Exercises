class BankAccount(private val accountNumber: String, private var balance: Double) {

    fun deposit(amount: Double) {
        balance += amount
        println("Deposited $amount. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        if (amount > balance) {
            println("Insufficient funds. Cannot withdraw $amount. Current balance: $balance")
        } else {
            balance -= amount
            println("Withdrawn $amount. New balance: $balance")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    val account = BankAccount("123456789", 1000.0)
    
    account.printBalance()
    account.deposit(500.0)
    account.withdraw(200.0)
    account.withdraw(2000.0)
    account.printBalance()
}
