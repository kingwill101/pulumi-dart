import 'package:artisanal/args.dart';

import 'integration_service.dart' as service;

final class ParityIntegrationCommand extends Command<int> {
  @override
  String get name => 'parity:integration';
  @override
  String get description =>
      'Audit integration-test coverage against upstream SDKs.';
  @override
  int run() {
    service.main();
    return 0;
  }
}
