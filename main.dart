import 'designer.dart';
import 'developer.dart';
import 'manager.dart';
import 'company.dart';
import 'address.dart';
import 'employee.dart';


void main(){
 
  Address add1=Address(city: 'benha', street: 'el zad', buildingNumber: 15);
  Address add2=Address(city: 'cairo', street: 'nasr city', buildingNumber: 25);
  Developer d1=Developer(programlang: 'Dart', experienceyear: 3, id: 100, name: 'wafaa', salary: 9000, address: add1);
  Designer d2= Designer(designtool:'figma', projectcount: 5, id: 150, name: 'Ali', salary: 10000, address: add2);
  Manager m1=Manager(id: 90, name: 'Mohammed', department: 'IT');
  Company c1=Company(name: 'BEST FUTURE', manager: m1);
  c1.addEmployee(d1);
  c1.addEmployee(d2);
  c1.removeEmployee(150);
  c1.displayAllEmployees();
  
}