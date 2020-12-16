// cast a string to int
void string_to_int() {
  var v = int.parse('1');

  // build in test function
  assert(v == 1);

  v += 1;

  print('string to int');
  print(v);
}

// int to string
void int_to_string() {
  var one = 1.toString();
  one += " Queen";

  print('int to string');
  print(one);
}

// decimal to string
void decimal_to_string() {
  var d1 = 3.1234.toString();
  var d2 = 3.1234.toStringAsFixed(3);
  assert(d2 == '3.123');

  print('d1 ${d1}');
  print('d2 ${d2}');
}
