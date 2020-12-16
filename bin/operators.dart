void operators1() {
  var a = 10;
  var b = 20;

  print('a is 10, print a++ is ${a++}');
  print('b is 20, print ++b is ${++b}');
}

// and or and not operators are && !! != respectively

// ternary operators
void ternary_operator() {
  var d1 = 10;
  var d2 = 20;

  int largest = (d1 > d2) ? d1 : d2;
  print('larger number is ${largest}');
}
