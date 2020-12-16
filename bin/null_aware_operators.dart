// null aware 1
void null_aware_1() {
  var s;
  s = someClass();
  int value;

  // if (s != null) {
  // why is this not executing?
  value = s.num;
  // }
  print('value of s.num ${value}');
}

class someClass {
  var num = 10;
}

// v = s?.n
// if s is not null then assign v = s.n
void null_aware_2() {
  var s;
  var t;
  s = someClass();
  var no1;
  var no2;

  // if s is not null then assign the value of s.num to no1
  // this will print 10 since s is an instance of someClass
  no1 = s?.num;

  // if t is not null then assign the value of t.num to no2
  // this will print null since var t is not initialized hence no2 will not be initialized
  no2 = t?.num;

  print(no1);
  print(no2);
}

// v = s?.n??m
// if s is not null then assign v = s.n otherwise v = m
void null_aware_3() {
  var s;
  var t;
  s = someClass();
  var no1;
  var no2;

  // if s is not null then assign the value of s.num to no1 otherwise assign 42 to no1
  // this will print 10 since s is an instance of someClass hence 42 is ignored
  no1 = s?.num ?? 42;

  // if t is not null then assign the value of t.num to no2 otherwise assign 43 to no2
  // this will print 43 since var t is not initialized hence 43 will be assigned to no2
  no2 = t?.num ?? 43;

  print(no1);
  print(no2);
}

// ??
void null_aware_4() {
  var no1;
  var no2;

  no1 = 5;

  // if no1 is not null then assign 100 to no1
  // this will assign 5 to no1 since no1 is not null
  no1 ??= 100;

  // if no2 is not null then assign 101 to no2
  // this will assign 101 to no2 since no2 is null
  no2 ??= 101;

  print(no1);
  print(no2);
}
