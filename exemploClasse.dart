class Bicycle {
  Bicycle(this.cadence, this.gear);
  int cadence;
  int gear;
  int _speed = 0;
  int get speed => _speed;
  
  @override
  String toString() => 'Bicycle: $gear mph';
  
  void applyBrake(int decrement) {
    _speed -= decrement;
  }
  
  void speedUp(int increment) {
    _speed += increment;
  } 
}


void main() {
  
  var bike = Bicycle(2, 1);
  print(bike);
}