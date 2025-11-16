import 'dart:math';

/// Implements a basic student management system demonstrating Lists, Maps,
/// for loops, and switch statements in Dart.

void main() {
  // Initialize Random number generator
  final random = Random();

  // 1. Create a List<String> of student names
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // 2. Create a Map<String, int> to store student scores (Name -> Score)
  Map<String, int> studentScores = {};

  // Initialize variables for analysis
  int highestScore = -1;
  String highestScorer = '';
  int lowestScore = 101;
  String lowestScorer = '';
  int totalScore = 0;

  print('--- Student Score Assignment ---');

  // 3. Use a for loop to assign random scores (60-100) to each student
  for (String name in studentNames) {
    // Generate a random integer between 60 (inclusive) and 101 (exclusive), i.e., 60-100
    int score = random.nextInt(41) + 60; // 41 is the range (100 - 60 + 1)
    studentScores[name] = score;
    totalScore += score;

    print('Score assigned to $name: $score');

    // Find highest score
    if (score > highestScore) {
      highestScore = score;
      highestScorer = name;
    }

    // Find lowest score
    if (score < lowestScore) {
      lowestScore = score;
      lowestScorer = name;
    }
  }

  print('\n--- Score Analysis ---');

  // 4. Calculate and display analysis results

  // Student with the highest score
  print('Highest Scorer: $highestScorer with $highestScore points');

  // Student with the lowest score
  print('Lowest Scorer: $lowestScorer with $lowestScore points');

  // Average score of all students
  double averageScore = totalScore / studentNames.length;
  print('Total Students: ${studentNames.length}');
  print('Total Score Sum: $totalScore');
  print('Average Score: ${averageScore.toStringAsFixed(2)}');

  print('\n--- Student Categorization (Switch Statement) ---');

  // 5. Use a switch statement to categorize students
  for (String name in studentNames) {
    int score = studentScores[name]!; // Using ! since we know the key exists
    String category;

    // Grouping scores into categories using a switch expression (Dart 2.12+)
    // The switch statement checks ranges based on the score divided by 10
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
        category = "Excellent"; // 90-100
        break;
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
        category = "Good"; // 80-89
        break;
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
        category = "Average"; // 70-79
        break;
      default:
        category = "Needs Improvement"; // Below 70
    }

    print('$name (Score: $score) is categorized as: $category');
  }
}
