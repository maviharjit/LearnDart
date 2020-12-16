void hash_sets() {
  // sets automatically remove duplicate values and print only unique values
  var names = {'tom', 'dick', 'harry', 'tom'};

  names.forEach((element) {
    print(element);
  });

  // defining an empty hash set. note the data type explicitly defined before curly braces
  var myHashSet = <String>{};
  print('type of variable myHashSet is ${myHashSet.runtimeType}');

  // don't confuse hash set with hash map
  var myHashMap = {};
  print('type of variable myHashMap is ${myHashMap.runtimeType}');

  // you can define has set using Set and you can also specify what data type it will hold
  Set<int> myElements = {};
  print('type of variable myElements is ${myElements.runtimeType}');
}

void hash_maps() {
  // very similar to dictionaries in python
  // hash maps store key value pairs
  var student = {
    'name': 'john',
    'last name': ' snow',
    'age':25,
    'email':'student@college.com',
    'scholarship':false
  };

  print(student['name']);
  print(student['email']);


}
