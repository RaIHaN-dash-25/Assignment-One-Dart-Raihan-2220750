// test/question_2_test.dart

import 'package:test/test.dart';

// IMPORTANT: Define the function being tested directly here.
// This is required because the original logic is inside your main() function
// and cannot be imported or called by the test runner.
String getCategory(int score) {
  switch (score) {
    case 100:
    case 99:
    case 98:
    case 97:
    case 96:
    case 95:
    case 94:
    case 93:
    case 92:
    case 91:
    case 90:
      return "Excellent";
    case 89:
    case 88:
    case 87:
    case 86:
    case 85:
    case 84:
    case 83:
    case 82:
    case 81:
    case 80:
      return "Good";
    case 79:
    case 78:
    case 77:
    case 76:
    case 75:
    case 74:
    case 73:
    case 72:
    case 71:
    case 70:
      return "Average";
    default:
      return "Needs Improvement";
  }
}

void main() {
  group('Score Categorization Logic Test', () {
    // Test for 'Excellent' (90-100)
    test('Should return "Excellent" for scores 90, 95, and 100', () {
      expect(getCategory(100), 'Excellent');
      expect(getCategory(95), 'Excellent');
      expect(getCategory(90), 'Excellent');
    });

    // Test for 'Good' (80-89)
    test('Should return "Good" for scores 80 and 89', () {
      expect(getCategory(89), 'Good');
      expect(getCategory(80), 'Good');
    });

    // Test for 'Average' (70-79)
    test('Should return "Average" for scores 70 and 79', () {
      expect(getCategory(79), 'Average');
      expect(getCategory(70), 'Average');
    });

    // Test for 'Needs Improvement' (Below 70)
    test('Should return "Needs Improvement" for scores below 70', () {
      expect(getCategory(69), 'Needs Improvement');
      expect(getCategory(60), 'Needs Improvement');
    });
  });
}
