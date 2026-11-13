class Manager {
  int id;
  String name;
  String department;

  Manager({
    required this.id,
    required this.name,
    required this.department,
  });

  void displayManagerInfo() {
    print("Manager ID: $id");
    print("Manager Name: $name");
    print("Department: $department");
  }
}