import 'dart:io';

import 'package:repodoc/src/commands/packages/pubspec_dependencies.dart';
import 'package:test/test.dart';

void main() {
  late Directory temporaryDirectory;
  late File pubspec;

  setUp(() {
    temporaryDirectory = Directory.systemTemp.createTempSync(
      'repodoc-pubspec-dependencies-',
    );
    pubspec = File('${temporaryDirectory.path}/pubspec.yaml');
  });

  tearDown(() => temporaryDirectory.deleteSync(recursive: true));

  test('reads only Pulumi provider dependency constraints', () {
    pubspec.writeAsStringSync('''
name: example
dependencies:
    pulumi: 3.0.0
    pulumi_aws: ^7.43.0
    pulumi_docker: ^5.1.0 # workspace provider
dev_dependencies:
    pulumi_test: ^1.0.0
''');

    expect(readPulumiProviderDependencyConstraints(pubspec), {
      'pulumi_aws': '^7.43.0',
      'pulumi_docker': '^5.1.0',
    });
  });

  test('preserves existing constraints in a regenerated pubspec', () {
    pubspec.writeAsStringSync('''
name: example
dependencies:
    pulumi: 3.0.0
    pulumi_aws: ^7.38.0
    pulumi_docker: ^4.6.0
''');

    preservePulumiProviderDependencyConstraints(pubspec, {
      'pulumi_docker': '^5.1.0',
    });

    expect(pubspec.readAsStringSync(), '''
name: example
dependencies:
    pulumi: 3.0.0
    pulumi_aws: ^7.38.0
    pulumi_docker: ^5.1.0
''');
  });
}
