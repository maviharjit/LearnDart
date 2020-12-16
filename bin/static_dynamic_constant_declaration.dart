// static declaration
void static_declaration() {
  String name = "prince";
  print('static declaration');
  print(name);
}

// dynamic declaration
void dynamic_declaration() {
  var name = "prince";
  var age = 25;
  var salary = 10000;

  print('dynamic declaration');
  print(name);
  print(age);
  print(salary);
}

// constant declaration
void constant_declaration() {
  const age = 25;

  print('constant declaration');
  print(age);

  // following will error out. can't change a constant
  //age=age+1;
}

// dynamic allocation/definition
void main() {
  // dynamic variables are assigned during run time
  // e.g. a variable that stores the exact time a program is run
  // (not compiled)
  dynamic v = 23;

  print('dynamic allocation');
  print(v);
}
