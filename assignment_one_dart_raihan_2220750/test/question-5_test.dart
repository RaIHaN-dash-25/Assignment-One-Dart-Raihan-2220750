import 'package:test/test.dart';

// IMPORTANT: Replace 'assignment_one_dart_raihan_2220750' with your actual project name
// and 'question-5.dart' with the file name in your lib folder.
import 'package:assignment_one_dart_raihan_2220750/question-5.dart';

void main() {
  late Manager manager;
  late Developer developer;

  setUp(() {
    // Initialize fresh instances for each test group
    manager = Manager("John Smith", "M001", "IT", 5);
    developer = Developer("Alice Johnson", "D001", "IT", "Dart");
  });

  // --- Tests for Payable Mixin (Logic shared by both Manager and Developer) ---
  group('Payable Mixin Functionality', () {
    const base = 5000.0;
    const bonus = 1000.0;
    const expected = 6000.0;

    // Test 1: Manager uses calculateSalary correctly
    test('Manager calculates salary correctly (Base + Bonus)', () {
      // Since Manager "with" Payable, it inherits calculateSalary
      expect(manager.calculateSalary(base, bonus), expected);
      expect(manager.calculateSalary(manager.getBaseSalary(), 1000.0), 9000.0);
    });

    // Test 2: Developer uses calculateSalary correctly
    test('Developer calculates salary correctly (Base + Bonus)', () {
      expect(developer.calculateSalary(base, bonus), expected);
      expect(
        developer.calculateSalary(developer.getBaseSalary(), 500.0),
        6500.0,
      );
    });

    // Test 3: Check processPayment (Non-output verification)
    test('processPayment method is callable on Manager', () {
      // Checks that the method exists and runs without error
      expect(() => manager.processPayment(100.0), returnsNormally);
    });
  });

  // --- Tests for Reportable Mixin (Only used by Manager) ---
  group('Reportable Mixin Functionality', () {
    // Test 4: Manager uses generateReport correctly
    test('Manager generates report string correctly', () {
      final report = manager.generateReport(manager.name, manager.department);
      const expectedReport = "Monthly report for John Smith in IT department";
      expect(report, expectedReport);
    });

    // Test 5: Verify Developer does NOT have the Reportable method
    test('Developer should NOT have the generateReport method', () {
      // This test ensures that the mixin usage is correctly restricted to Manager.
      // This is a type-checking test, verifying the object structure.
      expect(developer, isNot(TypeMatcher<Reportable>()));
    });
  });

  // --- Tests for Inheritance and Abstract Implementation ---
  group('Employee Class Implementation', () {
    // Test 6: Verify base salary is implemented correctly
    test('getBaseSalary returns correct hardcoded value for Manager', () {
      expect(manager.getBaseSalary(), 8000.0);
    });

    // Test 7: Verify job title is implemented correctly
    test('getJobTitle returns the correct string for Developer', () {
      expect(developer.getJobTitle(), "Senior Developer");
    });
  });
}
