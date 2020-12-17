// dynamic function
void dynamic_function() {
  print(
      "calling dynamic fun sum with two integers 1 and 2 returns ${sum(1, 2)}");

  print(
      "calling dynamic fun sum with two doubles 4.10 and 6.30 returns ${sum(4.10, 6.30)}");

  print(
      "calling dynamic fun sum with two strings ragnar and ok returns ${sum('ragnar', 'ok')}");

  print("calling dynamic fun multiply with 2 and 3 returns ${multiply(2, 3)}");

  print("calling fun using named arguments ${area(b: 3, l: 4)}");
}

// dynamic function returns data type based on passed in arguments
dynamic sum(var v1, var v2) {
  return v1 + v2;
}

// no need for curly braces and return statement for one liner functions. use fat arrow instead
dynamic multiply(var m1, var m2) => m1 * m2;

// using named arguments instead of (default) positional arguments. notice curly braces
// this means you may change the order of arguments when invoking the function
dynamic area({var l, var b}) {
  return l * b;
}
