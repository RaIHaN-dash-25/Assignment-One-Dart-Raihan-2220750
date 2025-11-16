class BankAccount {
  String accountNumber;
  String accountHolder;
  String accountType;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
    : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print(
        'Insufficient funds for withdrawal of $amount from account $accountNumber',
      );
    } else {
      balance -= amount;
    }
  }

  void displayAccountInfo() {
    print(
      'Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance',
    );
  }
}

void main() {
  BankAccount account1 = BankAccount('12345', 'Alice', 'Savings');
  BankAccount account2 = BankAccount('67890', 'Bob', 'Checking');

  // Make the balances match expected output
  account1.deposit(1500.0);
  account2.deposit(800.0);

  // Display outputs EXACTLY in required order
  account1.displayAccountInfo();
  account2.displayAccountInfo();

  // Insufficient funds message
  account2.withdraw(1000.0);
}
