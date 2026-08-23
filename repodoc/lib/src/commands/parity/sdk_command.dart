import 'package:artisanal/args.dart';

import 'sdk_service.dart' as service;

final class ParitySdkCommand extends Command<int> {
  @override
  String get name => 'parity:sdk';
  @override
  String get description =>
      'Audit Dart SDK test coverage against NodeJS and Python.';
  @override
  int run() {
    service.main();
    return 0;
  }
}
