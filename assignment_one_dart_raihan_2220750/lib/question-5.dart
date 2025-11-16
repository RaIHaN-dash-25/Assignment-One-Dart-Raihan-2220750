// Mixin Payable
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: $amount");
  }
}

// Mixin Reportable
mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

// Abstract class Employee
abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo();
}

// Concrete class Manager
class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
    : super(name, id, department);

  @override
  String getJobTitle() => "Manager";

  @override
  double getBaseSalary() => 8000.0;

  @override
  void displayInfo() {
    print(
      "Manager: $name (ID: $id, Department: $department, Team Size: $teamSize)",
    );
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

// Concrete class Developer
class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
    : super(name, id, department);

  @override
  String getJobTitle() => "Senior Developer";

  @override
  double getBaseSalary() => 6000.0;

  @override
  void displayInfo() {
    print(
      "Developer: $name (ID: $id, Department: $department, Language: $programmingLanguage)",
    );
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

void main() {
  // Create Manager and Developer objects
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer developer = Developer("Alice Johnson", "D001", "IT", "Dart");

  // Manager operations
  manager.displayInfo();
  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 1000);
  print("Calculated Salary: $managerSalary");
  manager.processPayment(managerSalary);
  print(
    "Report: ${manager.generateReport(manager.name, manager.department)}\n",
  );

  // Developer operations
  developer.displayInfo();
  double developerSalary = developer.calculateSalary(
    developer.getBaseSalary(),
    500,
  );
  print("Calculated Salary: $developerSalary");
  developer.processPayment(developerSalary);
}
