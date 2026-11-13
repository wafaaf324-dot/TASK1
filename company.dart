import 'manager.dart';
import 'employee.dart';
class Company {
  String name;
  Manager manager;
  List<Employee> employees = []; 

  Company({
    required this.name,
    required this.manager,
  });
 
  void addEmployee(Employee emp) {
    if (!employees.any((e) => e.id == emp.id)) {
      employees.add(emp);
      print("Employee ${emp.name} added successfully.");
    } else {
      print("Error: Employee with ID ${emp.id} already exists in the company!");
    }
  }
  void removeEmployee(int id) {
    var empToRemove = employees.firstWhere(
      (e) => e.id == id,
      orElse: () => null as Employee,
    );
    
    if (empToRemove != null) {
      employees.remove(empToRemove);
      print("Employee ID $id removed successfully.");
    } else {
           print("Error: Employee with ID $id does not exist in the company!");
    }
  }

  void displayAllEmployees() {
    print("Company: $name ");
    print("Company Manager: ${manager.name} (${manager.department} Dept)");
    print("Employees List:");
    for (var emp in employees) {
      emp.displayInfo();
      print("Calculated Bonus: ${emp.calculateBonus()}");
    }
  }
}