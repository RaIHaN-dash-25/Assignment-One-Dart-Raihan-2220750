import 'package:test/test.dart';

// IMPORTANT: Replace 'assignment_one_dart_raihan_2220750' with your actual project name
// and 'question-3.dart' with the file name in your lib folder.
// This import line is necessary to access the BankAccount class.
import 'package:assignment_one_dart_raihan_2220750/question-3.dart';

void main() {
  // Use setUp for initialization that runs before every test in this group.
  late BankAccount testAccount;

  setUp(() {
    // Initialize a fresh account before each test to ensure test independence
    testAccount = BankAccount('TEST101', 'Test User', 'Savings');
  });

  group('BankAccount Initialization and State', () {
    // Test 1: Check if the account is initialized correctly
    test('Account is initialized with 0.0 balance', () {
      expect(testAccount.accountNumber, 'TEST101');
      expect(testAccount.accountHolder, 'Test User');
      expect(testAccount.balance, 0.0);
    });
  });

  group('BankAccount Deposit Functionality', () {
    // Test 2: Check standard deposit
    test('Balance increases correctly after a deposit', () {
      testAccount.deposit(100.0);
      expect(testAccount.balance, 100.0);
    });

    // Test 3: Check multiple deposits
    test('Balance sums correctly after multiple deposits', () {
      testAccount.deposit(50.0);
      testAccount.deposit(75.50);
      expect(testAccount.balance, 125.50);
    });
  });

  group('BankAccount Withdrawal Functionality', () {
    // Set a starting balance for withdrawal tests
    setUp(() {
      testAccount.deposit(500.0); // Starts all withdrawal tests with 500.0
    });

    // Test 4: Check standard withdrawal
    test('Balance decreases correctly after a valid withdrawal', () {
      testAccount.withdraw(100.0);
      expect(testAccount.balance, 400.0);
    });

    // Test 5: Check withdrawal of the entire balance
    test('Balance becomes 0.0 after withdrawing the full amount', () {
      testAccount.withdraw(500.0);
      expect(testAccount.balance, 0.0);
    });

    // Test 6: Check insufficient funds scenario (critical test)
    test('Balance remains unchanged on insufficient funds withdrawal', () {
      testAccount.withdraw(500.01); // Attempt to withdraw more than 500.0
      // We expect the balance to still be 500.0
      expect(testAccount.balance, 500.0);
      // NOTE: We rely on the print statement for the user message,
      // but the core logic check is the balance remaining unchanged.
    });
  });
}
