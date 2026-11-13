class Address {
  String city;
  String street;
  int buildingNumber;

  Address({
    required this.city,
    required this.street,
    required this.buildingNumber,
  });
  void display(){print("CITY $city  STREET $street BUILDINGNUMBER $buildingNumber");}
}
