import 'dart:async';

void main() async {
  int age = 20;
  double height = 1.75;
  String name = "Phong";
  bool isStudent = true;
  print("Name: $name, Age: $age");
  print("Height: $height, Is student: ${isStudent ? 'Yes' : 'No'}");

  List<int> numbers = [1, 2, 3, 4, 5];
  int sum = numbers[0] + numbers[1];
  bool isEqual = (sum == 3);
  bool check = (sum > 0 && isEqual);
  Set<String> colors = {"red", "green", "blue"};
  colors.add("yellow");
  colors.remove("red");
  Map<String, String> capitals = {"Vietnam": "Hanoi", "USA": "Washington"};
  capitals["Japan"] = "Tokyo";
  print("Sum: $sum, Equal: $isEqual, Check: $check");
  print("Colors: $colors");
  print("Capitals: $capitals");

  int score = 85;
  if (score >= 80) {
    print("Excellent");
  } else {
    print("Good");
  }
  int day = 3;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 3:
      print("Wednesday");
      break;
    default:
      print("Other day");
  }
  List<String> fruits = ["Apple", "Banana", "Orange"];
  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }
  for (var fruit in fruits) {
    print(fruit);
  }
  fruits.forEach((f) => print(f));

  int multiply(int a, int b) {
    return a * b;
  }

  int add(int a, int b) => a + b;
  print("Multiply: ${multiply(5, 4)}, Add: ${add(5, 4)}");

  Car myCar = Car("Toyota");
  Car myOtherCar = Car.named("Honda");
  ElectricCar myTesla = ElectricCar("Tesla");
  myCar.drive();
  myOtherCar.drive();
  myTesla.drive();

  print("Loading...");
  await Future.delayed(Duration(seconds: 1));
  print("Data loaded");
  String? userName;
  print(userName ?? "Guest");
  userName = "Admin";
  print(userName!.toUpperCase());

  Stream<int> countStream(int max) async* {
    for (int i = 1; i <= max; i++) {
      yield i;
    }
  }

  await for (int value in countStream(3)) {
    print("Stream value: $value");
  }
}

class Car {
  String brand;
  Car(this.brand);
  Car.named(this.brand);
  void drive() {
    print("$brand is driving");
  }
}

class ElectricCar extends Car {
  ElectricCar(String brand) : super(brand);
  @override
  void drive() {
    print("$brand is driving silently");
  }
}
