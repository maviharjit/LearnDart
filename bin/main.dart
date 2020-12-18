import 'null_aware_operators.dart';
import 'static_dynamic_constant_declaration.dart';
import 'types_n_casting.dart';
import 'operators.dart';
import 'if_switch.dart';
import 'loops.dart';
import 'collections_spreadoperator.dart';
import 'hashsets_hashmaps.dart';
import 'functions_n_methods.dart';
import 'classes_and_objects.dart';
import 'enum_class.dart';
import 'exception_trycatch_finally_throw.dart';
import 'future_async_await.dart';

void main() {
  //hello_world();
  //static_declaration();
  //dynamic_declaration();
  //string_to_int();
  //int_to_string();
  //exceptions();
  async_examples();
}

// hello (dart) world
void hello_world() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}
