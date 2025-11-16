// Abstract class Vehicle
abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void start(); // abstract
  void stop(); // abstract

  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  // Calculate vehicle age
  int calculateAge(int currentYear) {
    return currentYear - year;
  }
}

// Concrete class Car
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
    : super(brand, model, year);

  @override
  void start() {
    print("Starting the car engine...");
  }

  @override
  void stop() {
    print("Stopping the car engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

// Concrete class Motorcycle
class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
    : super(brand, model, year);

  @override
  void start() {
    print("Starting the motorcycle engine...");
  }

  @override
  void stop() {
    print("Stopping the motorcycle engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

void main() {
  // Create a list of vehicles (polymorphism)
  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Motorcycle("Honda", "CBR", 2021, true),
  ];

  int currentYear = 2024;

  // Demonstrate polymorphism
  for (var vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print("");
  }

  // Calculate and display ages
  print("Car age: ${vehicles[0].calculateAge(currentYear)} years");
  print("Motorcycle age: ${vehicles[1].calculateAge(currentYear)} years");
}
