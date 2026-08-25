import 'dart:io';

import 'package:repodoc/src/commands/packages/authored_example_service.dart';
import 'package:test/test.dart';

void main() {
  test('rejects an example source outside the repository', () async {
    final root = Directory.systemTemp.createTempSync('repodoc-example-root-');
    addTearDown(() => root.deleteSync(recursive: true));

    await expectLater(
      const AuthoredExampleGenerator().generate(
        repositoryRoot: root,
        provider: 'sample',
        sourcePath: '../outside',
        generatedPackage: Directory('${root.path}/generated'),
        environment: const {},
      ),
      throwsArgumentError,
    );
  });

  test('requires a Pulumi YAML project', () async {
    final root = Directory.systemTemp.createTempSync('repodoc-example-root-');
    addTearDown(() => root.deleteSync(recursive: true));
    Directory('${root.path}/examples/sample').createSync(recursive: true);

    await expectLater(
      const AuthoredExampleGenerator().generate(
        repositoryRoot: root,
        provider: 'sample',
        sourcePath: 'examples/sample',
        generatedPackage: Directory('${root.path}/generated'),
        environment: const {},
      ),
      throwsA(isA<FileSystemException>()),
    );
  });

  test('copies and formats a directly authored Dart example', () async {
    final root = Directory.systemTemp.createTempSync('repodoc-example-root-');
    addTearDown(() => root.deleteSync(recursive: true));
    final source = Directory('${root.path}/examples/sample')
      ..createSync(recursive: true);
    File('${source.path}/main.dart').writeAsStringSync('''
class GeneratedStack {}
void main(){GeneratedStack();}
''');
    File('${source.path}/fixture.txt').writeAsStringSync('fixture\n');
    final generated = Directory('${root.path}/generated');

    await const AuthoredExampleGenerator().generate(
      repositoryRoot: root,
      provider: 'sample',
      sourcePath: 'examples/sample',
      generatedPackage: generated,
      environment: Platform.environment,
    );

    expect(
      File('${generated.path}/example/main.dart').readAsStringSync(),
      'class SampleStack {}\n\nvoid main() {\n  SampleStack();\n}\n',
    );
    expect(
      File('${generated.path}/example/fixture.txt').readAsStringSync(),
      'fixture\n',
    );
    expect(
      File('${generated.path}/Pulumi.yaml').readAsStringSync(),
      'name: dart-sample-example\nruntime: dart\nmain: example/main.dart\n',
    );
  });
}
