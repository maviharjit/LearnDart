// for loop
void for_loop() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}

// for-in loop
void for_in_loop() {
  var collection = [1, 2, 3];

  for (var i in collection) {
    print('hello ${i}');
  }
}

// for each loop
void for_each_loop() {
  var names = ["tom", "dick", "harry"];
  var cities = ["toronto", "winnipeg", "regina", "mooose jaw"];

  // iterate thru each element and print it
  names.forEach((element) => print(element));

  // iterate thru each element and call myPrintFunction
  cities.forEach((element) => myPrintFunction(element));
}

void myPrintFunction(e) {
  print(e);
}

// while loop
void while_loop() {
  int num = 5;

  while (num > 0) {
    print(num);
    num--;
  }
}

// do whole loop
void do_while_loop() {
  int num1 = 5;
  int num2 = -1;

  do {
    print(num1);
    num1--;
  } while (num1 > 0);

  do {
    print(num2);
    num2--;
  } while (num2 > 0);
}

// break keyword
void break_keyword() {
  for (int i = 0; i < 5; i++) {
    print('i is ${i}');

    // if i is 3 then exit loop
    if (i == 3) {
      break;
    }

  }
}

// continue keyword
void continue_keyword() {
  for (int i = 0; i < 5; i++) {

    // if i is 3 then skip this iteration of the loop
    if (i == 3) {
      continue;
    }
    print('i is ${i}');

  }
}