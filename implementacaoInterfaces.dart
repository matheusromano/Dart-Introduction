import 'dart:math';

main() {
  
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}


/*
// 1° opção para se criar uma fábrica
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(5);
  if (type == 'square') return Square(6);
  throw 'Can\'t create $type.';
}*/


// 2° opção para se criar uma fábrica
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(5);
    if (type == 'square') return Square(6);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

// Implementação de interfaces
class CircleMock implements Circle {
  num area = 0;
  num radius = 0;
}