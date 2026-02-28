import 'package:test/test.dart';

void main() {
  group('dynamic pending ports', () {
    test(
      'dynamic config parity across integration suites',
      () {},
      skip:
          'pending port: pulumi/tests/integration/integration_nodejs_test.go::dynamic nodejs-config '
          '+ pulumi/tests/integration/integration_python_test.go::dynamic python-config',
    );

    test(
      'read-inputs refresh parity',
      () {},
      skip:
          'pending port: pulumi/tests/integration/integration_nodejs_test.go::nodejs-read-inputs '
          '+ pulumi/tests/integration/integration_python_acceptance_test.go::python-read-inputs',
    );

    test(
      'reserved identifier shadowing parity',
      () {},
      skip:
          'pending port: pulumi/tests/integration/integration_nodejs_test.go::nodejs-reserved-identifier-shadowing',
    );

    test(
      'core broken-provider behavior parity',
      () {},
      skip:
          'pending port: pulumi/sdk/python/lib/test/test_broken_dynamic_provider.py',
    );
  });
}
