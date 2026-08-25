// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_myext/index.dart' as module_index;

final index = _IndexModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final GreetArgs = module_index.GreetArgs.new;
  final GreetResult = module_index.GreetResult.new;
  final GreetResultArgs = module_index.GreetResult.new;
  final Greeting = module_index.Greeting.new;
  final GreetingComponent = module_index.GreetingComponent.new;
  final greet = module_index.greet;
}
