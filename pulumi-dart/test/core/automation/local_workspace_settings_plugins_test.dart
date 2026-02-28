import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

class _FakeRunner {
  _FakeRunner(List<PulumiCommandResult> responses)
    : _responses = Queue<PulumiCommandResult>.from(responses);

  final Queue<PulumiCommandResult> _responses;
  final List<PulumiCommandRequest> requests = <PulumiCommandRequest>[];

  Future<PulumiCommandResult> call(PulumiCommandRequest request) async {
    requests.add(request);
    if (_responses.isEmpty) {
      throw StateError('No fake response available for ${request.arguments}');
    }
    return _responses.removeFirst();
  }
}

void main() {
  group('automation.LocalWorkspace settings/plugins', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp(
        'pulumi-automation-settings-',
      );
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('projectSettings reads Pulumi.yaml', () async {
      final file = File(p.join(tempDir.path, 'Pulumi.yaml'));
      await file.writeAsString('''
name: sample
runtime: dart
description: demo
template:
  important: true
''');

      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(workDir: tempDir.path),
      );
      final settings = await workspace.projectSettings();

      expect(settings['name'], equals('sample'));
      expect(settings['runtime'], equals('dart'));
      expect((settings['template'] as Map<String, dynamic>)['important'], true);
    });

    test('saveProjectSettings prefers existing Pulumi.json', () async {
      final file = File(p.join(tempDir.path, 'Pulumi.json'));
      await file.writeAsString('{}');

      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(workDir: tempDir.path),
      );
      await workspace.saveProjectSettings(<String, dynamic>{
        'name': 'project',
        'runtime': 'dart',
        'description': 'saved',
      });

      final decoded = jsonDecode(await file.readAsString());
      expect(decoded['name'], equals('project'));
      expect(decoded['runtime'], equals('dart'));
      expect(decoded['description'], equals('saved'));
    });

    test('stackSettings normalizes serialized key casing', () async {
      final file = File(p.join(tempDir.path, 'Pulumi.dev.yaml'));
      await file.writeAsString('''
secretsprovider: passphrase
encryptedkey: abc123
config:
  proj:value: hello
''');

      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(workDir: tempDir.path),
      );
      final settings = await workspace.stackSettings('org/project/dev');

      expect(settings['secretsProvider'], equals('passphrase'));
      expect(settings['encryptedKey'], equals('abc123'));
      expect(settings.containsKey('secretsprovider'), isFalse);
      expect(settings.containsKey('encryptedkey'), isFalse);
    });

    test('saveStackSettings serializes stack setting key casing', () async {
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(workDir: tempDir.path),
      );
      await workspace.saveStackSettings('org/project/dev', <String, dynamic>{
        'secretsProvider': 'passphrase',
        'encryptedKey': 'abc123',
        'config': <String, dynamic>{'proj:value': 'hello'},
      });

      final file = File(p.join(tempDir.path, 'Pulumi.dev.yaml'));
      final decoded = jsonDecode(await file.readAsString());
      expect(decoded['secretsprovider'], equals('passphrase'));
      expect(decoded['encryptedkey'], equals('abc123'));
      expect(decoded.containsKey('secretsProvider'), isFalse);
      expect(decoded.containsKey('encryptedKey'), isFalse);
    });

    test('plugin commands and listPlugins use expected CLI shapes', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(
          exitCode: 0,
          stdout:
              '[{"name":"aws","path":"/tmp/plugins/aws","kind":"resource","version":"6.0.0","size":123,"installTime":"2024-05-01T00:00:00Z","lastUsedTime":"2024-05-02T00:00:00Z","serverURL":"https://get.pulumi.com"}]',
          stderr: '',
        ),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      await workspace.installPlugin('aws', 'v6.0.0');
      await workspace.installPluginFromServer(
        'aws',
        'v6.0.0',
        'https://plugins.example.com',
      );
      await workspace.removePlugin(
        name: 'aws',
        versionRange: '>=6.0.0',
        kind: 'resource',
      );
      final plugins = await workspace.listPlugins();

      expect(
        runner.requests[0].arguments,
        equals(<String>['plugin', 'install', 'resource', 'aws', 'v6.0.0']),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'plugin',
          'install',
          'resource',
          'aws',
          'v6.0.0',
          '--server',
          'https://plugins.example.com',
        ]),
      );
      expect(
        runner.requests[2].arguments,
        equals(<String>['plugin', 'rm', 'resource', 'aws', '>=6.0.0', '--yes']),
      );
      expect(
        runner.requests[3].arguments,
        equals(<String>['plugin', 'ls', '--json']),
      );
      expect(plugins, hasLength(1));
      expect(plugins.first.name, equals('aws'));
      expect(plugins.first.version, equals('6.0.0'));
      expect(plugins.first.size, equals(123));
      expect(plugins.first.installTime, isNotNull);
      expect(plugins.first.lastUsedTime, isNotNull);
    });

    test('install uses expected CLI flags', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      await workspace.install();
      await workspace.install(
        const AutomationInstallOptions(
          noPlugins: true,
          noDependencies: true,
          reinstall: true,
          useLanguageVersionTools: true,
        ),
      );

      expect(runner.requests[0].arguments, equals(<String>['install']));
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'install',
          '--use-language-version-tools',
          '--no-plugins',
          '--no-dependencies',
          '--reinstall',
        ]),
      );
    });

    test(
      'exportStack/importStack serialize deployment state via temp file',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(
            exitCode: 0,
            stdout: '{"version":3,"deployment":{"resources":[]}}',
            stderr: '',
          ),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        ]);
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );

        final state = await workspace.exportStack('dev');
        await workspace.importStack('dev', <String, dynamic>{
          'version': 3,
          'deployment': <String, dynamic>{'resources': <dynamic>[]},
        });

        expect(state['version'], equals(3));
        expect(
          runner.requests[0].arguments,
          equals(<String>[
            'stack',
            'export',
            '--stack',
            'dev',
            '--show-secrets',
          ]),
        );

        final importArgs = runner.requests[1].arguments;
        expect(importArgs[0], equals('stack'));
        expect(importArgs[1], equals('import'));
        expect(importArgs[2], equals('--file'));
        expect(importArgs[4], equals('--stack'));
        expect(importArgs[5], equals('dev'));
        expect(File(importArgs[3]).existsSync(), isFalse);
      },
    );
  });
}
