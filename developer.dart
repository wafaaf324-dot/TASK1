import 'employee.dart';
import 'address.dart';


class Developer extends Employee{
  String programlang;
  int experienceyear;
  Developer({required this.programlang,required this.experienceyear,
    required int id,
    required String name,
    required double salary,
    required Address address,}):super(id: id,name: name,salary: salary,address: address);
  @override
  double calculateBonus() {
     return(salary*0.1)+(experienceyear*100);
  }
}