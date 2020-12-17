void exceptions() {
  // generic format of try catch block
  // try() catch (e) {
  //   // deal with exception
  // }

  print('\ncalling exception1()');
  exception1();
  //exception2();

  print('\ncalling exception3()');
  exception3();

  print('\ncalling exception4()');
  exception4();

  print('\ncalling exception5()');
  exception5();

  print('\ncalling exception6()');
  exception6();
}

// lets try to simulate (unsuccessfully) division by zero using int
void exception1() {
  var a = 10;
  var b = 0;
  var c = a / b;

  // this will print Infinity coz Dart will automatically convert int into Double and
  // Double has built in value of Infinity
  print(c);
}

// lets force Dart to simulate division by zero using int
void exception2() {
  var a = 10;
  var b = 0;
  // prevent Dart from automatically converting data type use tilde symbol i.e. ~
  var c = a ~/ b;

  // the following will throw and exception i.e. IntegerDivisionByZeroException
  //print(c);
}

// use try and catch block to handle the exception
void exception3() {
  var a = 10;
  var b = 0;

  // the try catch block will handle the exception omre gracefully than default
  try {
    // prevent Dart from automatically converting data type use tilde symbol i.e. ~
    var c = a ~/ b;
    print(c);
  } catch (e) {
    print('Division by zero is not allowed');
  }
}

// catch a particular type of exception as opposed to generic exception
void exception4() {
  var a = 10;
  var b = 0;
  var myList = [1, 2, 3, 4];

  // divisionbyzero exception is handled specifically
  // this will caues the divisonbyzero block to be executed
  // the generic catch is invoked only if the exception is not a divisionbyzero
  try {
    var c = a ~/ b;
    print(c);
  } on IntegerDivisionByZeroException {
    print('Division by zero exception happened');
  } catch (e) {
    print('Some generic exception happened');
  }

  // lets try causing out of bounds exception
  // this will cause the generic exception block to be executed
  try {
    print(myList[5]);
  } on IntegerDivisionByZeroException {
    print('Division by zero exception happened');
  } catch (e) {
    print('Some generic exception happened');
  }
}

// finally block - always executed - cleanup on termination
void exception5() {
  var myList = [1, 2, 3, 4];

  try {
    print(myList[5]);
  } on IntegerDivisionByZeroException {
    print('Division by zero exception happened');
  } catch (e) {
    print('Some generic exception happened');
  } finally {
    print('finally block is always executed. use for cleaup on termination');
  }
}

// custom exception
class AgeException implements Exception {
  String errMsg() => 'Age can\'t be less then zero';
}

void exception6() {
  var age;

  try {
    age = -10;
    if (age < 0) {
      throw AgeException;
    }
  } on AgeException {
    print('AgeException happened');
  } catch (e) {
    // why is this block getting executed instead of AgeException block?
    print('Some generic exception happened');
  } finally {
    print('finally block is always executed. use for cleaup on termination');
  }
}


