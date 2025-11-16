// 1. Import the Dart testing framework
import 'package:test/test.dart';

// 2. Import your code file from the lib folder.
// IMPORTANT: Replace 'assignment_one_dart_raihan_2220750' with your actual project name
// if it's different in your pubspec.yaml file.
import 'package:assignment_one_dart_raihan_2220750/question-1.dart';

void main() {
  // Group all tests related to the BMI function
  group('calculateBMI Function Tests', () {
    // Test Case 1: Standard valid input (71.31 kg, 1.78 m -> approx 22.5 BMI)
    test('Should return 22.5 for 71.31 kg and 1.78 m', () {
      // We expect the result to be close to 22.5, so we use closeTo matcher
      expect(calculateBMI(71.31, 1.78), closeTo(22.50, 0.01));
    });

    // Test Case 2: Healthy BMI value
    test('Should return 20.0 for 80 kg and 2.0 m', () {
      expect(calculateBMI(80.0, 2.0), closeTo(20.0, 0.001));
    });

    // Test Case 3: Edge Case (Height is zero) - This tests your height check
    test('Should return 0.0 if height is zero', () {
      expect(calculateBMI(70.0, 0.0), 0.0);
    });

    // Test Case 4: Edge Case (Height is negative) - This also tests your height check
    test('Should return 0.0 if height is negative', () {
      expect(calculateBMI(70.0, -1.0), 0.0);
    });
  });

  // ---

  // Group all tests related to the Grade function
  group('getGrade Function Tests', () {
    // Test Case 1: 'A' grade boundaries
    test('Should return "A" for 100 (Max Score)', () {
      expect(getGrade(100), 'A');
    });
    test('Should return "A" for 90 (Lower bound of A)', () {
      expect(getGrade(90), 'A');
    });

    // Test Case 2: 'B' grade boundaries
    test('Should return "B" for 89 (Upper bound of B)', () {
      expect(getGrade(89), 'B');
    });
    test('Should return "B" for 80 (Lower bound of B)', () {
      expect(getGrade(80), 'B');
    });

    // Test Case 3: 'F' grade boundaries
    test('Should return "F" for 59 (Upper bound of F)', () {
      expect(getGrade(59), 'F');
    });
    test('Should return "F" for 0 (Min Score)', () {
      expect(getGrade(0), 'F');
    });
  });
}
