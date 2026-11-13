import 'employee.dart';
import 'address.dart';


class Designer extends Employee{
  String designtool;
  int  projectcount;
  Designer({required this.designtool, required this.projectcount,
    required int id,
    required String name,
    required double salary,
    required Address address,}):super(id: id,name: name,salary: salary,address: address);
  @override
  double calculateBonus() {
     return( (salary*.08)+(projectcount*50));
  }
}