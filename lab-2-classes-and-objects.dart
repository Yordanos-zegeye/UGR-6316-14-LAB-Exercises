class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void makeSound() {
    print('Vroom Vroom!');
  }
}

void main() {
  // Instantiate the object
  Car myCar = Car('Toyota', 'Corolla', 2020);


  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');

  myCar.makeSound();
}
