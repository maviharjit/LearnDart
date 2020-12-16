// lists are just like array but better
void list_example() {
  // an empty list
  List names = [];

  // notice that the list can hold any data type
  names = ['tom', 'dick', 'harry', 25, 30.25, true];

  // 'for in' loop for iterating thru a list
  for (var n in names) {
    print(n);
  }

  // you can define a list without using keyword list thanks to Dart's type inference
  var days = ['monday', 'tuesday', 'wednesday', 'wednesday'];

  // manipulating an item within the list
  days[3] = 'thursday';

  // for each loop is the best, for iterating thru a list
  days.forEach((element) {
    print(element);
  });

  // forcing a list to have a particular data type
  List<String> months = ['Jan', 'Feb', 'Mar', 'Apr'];

  // the following will throw error since list can only contain strings
  //months[4] = 25;

  months.forEach((element) {
    print(element);
  });

  // making a list with immutable members
  List salaries = const [50345.00, 60198.00, 81345.00];
  // the following will throw an error since list is const
  //salaries[1] = 61000;

  // this will print the whole list
  print(salaries);

  // store the memory address of list salaries into another variable v
  var v = salaries;

  // this will also print the list since v point to the memory location that salaries points to
  print(v);

  // if you need the new list to be a separate copy of old list instead of pointing to the same then use
  // spread operator
  // [...xyz]
  List cars = ['toyoya', 'ford', 'bmw', "mercedes"];

  // following creates a separates copy of List cars instead of pointing to original List's memory location
  var luxuryRides = [...cars];

  luxuryRides[0] = 'ferrari';
  luxuryRides[1] = 'lamborghini';

  // both lists should have slightly different contents now
  print(cars);
  print(luxuryRides);
}
