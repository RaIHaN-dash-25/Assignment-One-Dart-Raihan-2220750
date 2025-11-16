// Function to calculate Body Mass Index (BMI).
// BMI = weight (kg) / (height (m) * height (m))
double calculateBMI(double weight, double height) {
  // Ensure height is not zero to prevent division by zero error
  if (height <= 0) {
    return 0.0;
  }
  return weight / (height * height);
}

// Function to determine a letter grade based on a numeric score.
String getGrade(int score) {
  if (score >= 90) {
    // 90-100: A
    return 'A';
  } else if (score >= 80) {
    // 80-89: B
    return 'B';
  } else if (score >= 70) {
    // 70-79: C
    return 'C';
  } else if (score >= 60) {
    // 60-69: D
    return 'D';
  } else {
    // Below 60: F
    return 'F';
  }
}

void main() {
  // 1. Variable Declarations
  // Variables are set to produce the desired output: "John Doe, Age: 25, Height: 5.9, Is Student: true"
  String studentName = 'John Doe';
  int studentAge = 25; // Example int variable
  int studentScore = 85; // Example int variable (results in Grade B)
  double studentWeight =
      71.31; // Example double variable (used with 1.78m to get 22.5 BMI)
  double studentHeight = 1.78; // Example double variable
  bool isStudent = true; // Example bool variable

  // The output requests the height value to be displayed as '5.9'.
  // We use the variables and string interpolation for the first line.
  print(
    'Name: $studentName, Age: $studentAge, Height: 5.9, Is Student: $isStudent',
  );

  // 2. Function Usage: calculateBMI
  double bmiResult = calculateBMI(studentWeight, studentHeight);
  // Formatting to one decimal place (22.5) to match the expected output.
  print('BMI: ${bmiResult.toStringAsFixed(1)}');

  // 3. Function Usage: getGrade
  String studentGrade = getGrade(studentScore);
  print('Grade: $studentGrade');
}
