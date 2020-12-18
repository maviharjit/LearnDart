// async operations are those which are non blocking i.e. the code does not need to wait for a
// certain operation to finish before moving on
void async_examples() {
  print('calling async1()');
  async1();

  print('calling async2()');
  async2();

  print('calling async3()');
  async3();
}

// a method for simulating delay e.g. network delay or disk io delay or processing delay
// the method waits for 2 seconds and thend prints "Data"
// This is an example of an asyncronous function which keep running in  without blocking code flow
Future<void> fetchUserData() {
  return Future.delayed(Duration(seconds: 2),
      () => print('Data from async function fetchUserData'));
}

void async1() {
  fetchUserData();

  // the following will get printed first although fetchUserData() was invoked first
  // this is because fetchUserData is waiting for timeout before returning
  print('Fetching User Data');
}

// this async function returns the string Data after waiting 2 seconds
Future<String> fetchUserData2() {
  return Future.delayed(
      Duration(seconds: 2), () => 'Data from async function fetchUserData2');
}

// this function calls the function above i.e. fetchUserData2
String userMsg() {
  var data = fetchUserData2();
  // $ represents String interpolation. means show me what is stored inside var data
  // since the Future is not complete (still waiting on 2 sec timeout), following will not contain
  // the actual data string from fetchUserData2. instead it will contain an
  // uncompleted Future and hence will say "Instace of 'Future<String>"
  // to prevent an incomplete Future from returning we use async and await. they go together
  return '$data';
}

void async2() {
  // the following will print "Instance of 'Future<String>'
  // This is coz the Future<String> returned by fetchUserData2 is still empty coz its on 2 sec wait
  // notice that the actual data string from fetchUserData2 is never printed
  print(userMsg());
}

// an async fun always returns a future
Future<String> userMsg2() async {
  var data = await fetchUserData2();
  // await and async will force the function to wait until the Future is completed
  return '$data';
}

void async3() async {
  // await and async will force the function to wait until the Future is completed
  print(await userMsg2());
}
