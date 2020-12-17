void class_1() {
  Point1 p1 = Point1(200, 100);

  print(p1.x);
  print(p1.y);

  p1.printData();

  // calling a constructor other than defalut constructor
  Point2 p2 = Point2.fromMap(<String, int>{'x': 10, 'y': 20});
  p2.printData();

  // calling a constructor using initializer list
  Point3 p3 = Point3.fromMap(<String, int>{'x': 11, 'y': 21});

  // calling a constructor with assert validating built in
  Point4 p4 = Point4(3, 5);
  // the following will cause error since x is not > 0
  // Point4 p4b = Point4(0,5);

  Point5 p5 = Point5(8, 9);
  // calling the getter for Point5 class object
  print(p5.getX);
  print(p5.getY);
  // calling a getter that returns a custom data type i.e. a map in this case
  print(p5.getMap);

  // calling setter. notice this is differnt from how java does it. 
  // no braces to invoke setter but an assignment
  p5.setX = 18;
  p5.setY = 19;
  print(p5.getMap);

}

// class definition for class Point1 - simpler constructor and far arrow methods
class Point1 {
  //data members
  int x;
  int y;

  // classical constructor, just like java
  // Point1(x,y) {
  //   this.x = x;
  //   this.y = y;
  // }

  // a simpler constructor provided by dart
  Point1(this.x, this.y);

  // member method. notice the use of fat arrow for one liner method
  void printData() => print('$x + $y');
}

// class Point2 - demonstrates multiple constructors
class Point2 {
  // works with var but errors with int. why?
  var x;
  var y;

  // multiple constructors
  Point2(this.x, this.y);
  // following is not the best way. check initializer list in Point3
  Point2.fromMap(Map<String, int> map) {
    this.x = map['x'];
    this.y = map['y'];
  }

  void printData() => print('$x + $y');
}

// class Point3 - demostrates Initializer lists for constructor
class Point3 {
  var x;
  var y;

  // multiple constructors
  Point3(this.x, this.y);
  // constructor with initializer list
  // you can also use initializer list with assert to validate data before accepting it into constructor etc
  Point3.fromMap(Map<String, int> map)
      : x = map['x'],
        y = map['y'] {
    printData();
  }

  void printData() => print('$x + $y');
}

// class Point4 - demonstrates using assert with initializer list
class Point4 {
  var x;
  var y;

  // use of assert with initilizer list to validate passed in arguments
  Point4(this.x, this.y) : assert(x > 0) {
    printData();
  }

  void printData() => print('$x + $y');
}

// class Point5 - getters and setters
class Point5 {
  var x;
  var y;

  Point5(this.x, this.y);

  // getters
  int get getX => this.x;
  int get getY => this.y;
  // a getter that returns custom data type i.e. a map in this case
  Map<String, int> get getMap => <String, int>{'x': this.x, 'y': this.y};

  // setters
  set setX(int x) => this.x = x;
  set setY(int y) => this.y = y;

  void printData() => print('$x + $y');
}
