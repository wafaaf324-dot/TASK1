
import 'address.dart';

class Employee {
  int id;
  String name;
  double salary;
  Address address; 

  Employee({
    required this.id,
    required this.name,
    required double salary,
    required this.address,
  }) : this.salary = salary >= 0 ? salary : 0.0;  
  void displayInfo() {
    print("ID: $id");
    print("Name: $name");
    print("Salary: $salary");
    print("Address: City: ${address.city}, Street: ${address.street}, Building: ${address.buildingNumber}");
  }

  double calculateBonus() {
    return 0;
  }}