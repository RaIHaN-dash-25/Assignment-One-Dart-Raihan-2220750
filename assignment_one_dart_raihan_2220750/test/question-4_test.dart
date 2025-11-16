import 'package:test/test.dart';

// IMPORTANT: Replace 'assignment_one_dart_raihan_2220750' with your actual project name
// and 'question-4.dart' with the file name in your lib folder.
// This import line is necessary to access the Vehicle class and its children.
import 'package:assignment_one_dart_raihan_2220750/question-4.dart';

void main() {
  // Test case for the abstract Vehicle class functionality
  group('Vehicle Base Class Functionality', () {
    // We can't instantiate Vehicle directly, so we test an instance of Car
    // to verify the inherited logic.
    late Car testCar;

    setUp(() {
      testCar = Car("TestBrand", "TestModel", 2020, 4);
    });

    // Test 1: Check the common calculateAge method
    test('calculateAge returns the correct vehicle age', () {
      expect(testCar.calculateAge(2024), 4);
      expect(
        testCar.calculateAge(2020),
        0,
      ); // Current year is the same as model year
    });

    // Test 2: Check the core properties are initialized by the constructor
    test('Brand, model, and year are initialized correctly', () {
      expect(testCar.brand, 'TestBrand');
      expect(testCar.model, 'TestModel');
      expect(testCar.year, 2020);
    });
  });

  // ---

  // Test cases for the Car subclass
  group('Car Subclass Functionality', () {
    late Car camry;

    setUp(() {
      camry = Car("Toyota", "Camry", 2020, 4);
    });

    // Test 3: Check unique property initialization
    test('Car initializes unique numberOfDoors property', () {
      expect(camry.numberOfDoors, 4);
    });

    // Test 4: Check implementation of abstract start/stop (non-output check)
    test('Car implements the abstract start/stop methods', () {
      // We primarily check that the methods can be called without error.
      // Testing console output is complex, so we check for functionality.
      expect(() => camry.start(), returnsNormally);
      expect(() => camry.stop(), returnsNormally);
    });
  });

  // ---

  // Test cases for the Motorcycle subclass
  group('Motorcycle Subclass Functionality', () {
    late Motorcycle honda;

    setUp(() {
      honda = Motorcycle("Honda", "CBR", 2021, true);
    });

    // Test 5: Check unique property initialization
    test('Motorcycle initializes unique hasWindshield property', () {
      expect(honda.hasWindshield, isTrue);

      final naked = Motorcycle("Ducati", "Monster", 2022, false);
      expect(naked.hasWindshield, isFalse);
    });

    // Test 6: Check implementation of abstract start/stop (non-output check)
    test('Motorcycle implements the abstract start/stop methods', () {
      expect(() => honda.start(), returnsNormally);
      expect(() => honda.stop(), returnsNormally);
    });
  });
}
