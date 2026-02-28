import 'dart:collection';
import 'dart:io';

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
  group('automation.LocalWorkspace', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('pulumi-automation-');
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test(
      'createOrSelectStack initializes when select reports missing stack',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(
            exitCode: 255,
            stdout: '',
            stderr: 'error: no stack named dev',
          ),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        ]);

        final stack = await LocalWorkspace.createOrSelectStack(
          LocalProgramArgs(stackName: 'dev', workDir: tempDir.path),
          options: LocalWorkspaceOptions(commandRunner: runner.call),
        );

        expect(stack.name, equals('dev'));
        expect(runner.requests, hasLength(2));
        expect(
          runner.requests[0].arguments,
          equals(<String>['stack', 'select', 'dev']),
        );
        expect(
          runner.requests[1].arguments,
          equals(<String>['stack', 'init', 'dev']),
        );
      },
    );

    test(
      'createOrSelectStack only selects when stack already exists',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        ]);

        final stack = await LocalWorkspace.createOrSelectStack(
          LocalProgramArgs(stackName: 'dev', workDir: tempDir.path),
          options: LocalWorkspaceOptions(commandRunner: runner.call),
        );

        expect(stack.name, equals('dev'));
        expect(runner.requests, hasLength(1));
        expect(
          runner.requests.single.arguments,
          equals(<String>['stack', 'select', 'dev']),
        );
      },
    );

    test('stack up uses expected non-interactive flags by default', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );
      final stack = Stack('dev', workspace);

      await stack.up();

      expect(
        runner.requests.single.arguments,
        equals(<String>[
          'up',
          '--stack',
          'dev',
          '--yes',
          '--skip-preview',
          '--non-interactive',
        ]),
      );
    });

    test('setConfig appends --secret when requested', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );
      final stack = Stack('dev', workspace);

      await stack.setConfig('password', 's3cret', secret: true);

      expect(
        runner.requests.single.arguments,
        equals(<String>[
          'config',
          'set',
          'password',
          '--stack',
          'dev',
          '--secret',
          '--non-interactive',
          '--',
          's3cret',
        ]),
      );
    });

    test('setAllConfig emits secret/plaintext flags per entry', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );
      final stack = Stack('dev', workspace);

      await stack.setAllConfig(<String, AutomationConfigValue>{
        'proj:plain': const AutomationConfigValue(value: 'abc', secret: false),
        'proj:secret': const AutomationConfigValue(value: 'def', secret: true),
      });

      expect(
        runner.requests.single.arguments,
        equals(<String>[
          'config',
          'set-all',
          '--stack',
          'dev',
          '--plaintext',
          'proj:plain=abc',
          '--secret',
          'proj:secret=def',
        ]),
      );
    });

    test('removeConfig and removeAllConfig use expected commands', () async {
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
      final stack = Stack('dev', workspace);

      await stack.removeConfig('proj:one');
      await stack.removeAllConfig(<String>['proj:one', 'proj:two']);

      expect(
        runner.requests[0].arguments,
        equals(<String>['config', 'rm', 'proj:one', '--stack', 'dev']),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'config',
          'rm-all',
          'proj:one',
          'proj:two',
          '--stack',
          'dev',
        ]),
      );
    });

    test('add/list/remove environments use expected commands', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(
          exitCode: 0,
          stdout: '["automation-api-test-env","automation-api-test-env-2"]',
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
      final stack = Stack('dev', workspace);

      await stack.addEnvironments(<String>[
        'automation-api-test-env',
        'automation-api-test-env-2',
      ]);
      final envs = await stack.listEnvironments();
      await stack.removeEnvironment('automation-api-test-env');

      expect(
        runner.requests[0].arguments,
        equals(<String>[
          'config',
          'env',
          'add',
          'automation-api-test-env',
          'automation-api-test-env-2',
          '--stack',
          'dev',
          '--yes',
        ]),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>['config', 'env', 'ls', '--stack', 'dev', '--json']),
      );
      expect(
        runner.requests[2].arguments,
        equals(<String>[
          'config',
          'env',
          'rm',
          'automation-api-test-env',
          '--stack',
          'dev',
          '--yes',
        ]),
      );
      expect(
        envs,
        equals(<String>[
          'automation-api-test-env',
          'automation-api-test-env-2',
        ]),
      );
    });

    test('getConfig and getAllConfig decode pulumi json shape', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(
          exitCode: 0,
          stdout: '{"value":"test_value","secret":false}',
          stderr: '',
        ),
        const PulumiCommandResult(
          exitCode: 0,
          stdout:
              '{"proj:new_key":{"value":"test_value","secret":false},"proj:test_secret":{"value":"s3cret","secret":true}}',
          stderr: '',
        ),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );
      final stack = Stack('dev', workspace);

      final single = await stack.getConfig('proj:new_key');
      final all = await stack.getAllConfig();

      expect(single.value, equals('test_value'));
      expect(single.secret, isFalse);
      expect(all['proj:new_key']?.value, equals('test_value'));
      expect(all['proj:new_key']?.secret, isFalse);
      expect(all['proj:test_secret']?.value, equals('s3cret'));
      expect(all['proj:test_secret']?.secret, isTrue);

      expect(
        runner.requests[0].arguments,
        equals(<String>[
          'config',
          'get',
          'proj:new_key',
          '--json',
          '--stack',
          'dev',
        ]),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'config',
          '--show-secrets',
          '--json',
          '--stack',
          'dev',
        ]),
      );
    });

    test('outputs uses stack output json command shape', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(
          exitCode: 0,
          stdout: '{"petName":"otis"}',
          stderr: '',
        ),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );
      final stack = Stack('dev', workspace);

      final outputs = await stack.outputs(showSecrets: true);

      expect(outputs['petName'], equals('otis'));
      expect(
        runner.requests.single.arguments,
        equals(<String>[
          'stack',
          'output',
          '--json',
          '--stack',
          'dev',
          '--show-secrets',
        ]),
      );
    });

    test(
      'outputsWithMetadata marks secrets by comparing masked/plaintext',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(
            exitCode: 0,
            stdout: '{"petName":"[secret]","region":"us-west-2"}',
            stderr: '',
          ),
          const PulumiCommandResult(
            exitCode: 0,
            stdout: '{"petName":"otis","region":"us-west-2"}',
            stderr: '',
          ),
        ]);
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );
        final stack = Stack('dev', workspace);

        final outputs = await stack.outputsWithMetadata();

        expect(outputs['petName']?.value, equals('otis'));
        expect(outputs['petName']?.secret, isTrue);
        expect(outputs['region']?.value, equals('us-west-2'));
        expect(outputs['region']?.secret, isFalse);
        expect(
          runner.requests[0].arguments,
          equals(<String>['stack', 'output', '--json', '--stack', 'dev']),
        );
        expect(
          runner.requests[1].arguments,
          equals(<String>[
            'stack',
            'output',
            '--json',
            '--stack',
            'dev',
            '--show-secrets',
          ]),
        );
      },
    );

    test('history/info parse json and apply pagination args', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(
          exitCode: 0,
          stdout:
              '[{"kind":"update","result":"succeeded"},{"kind":"preview","result":"succeeded"}]',
          stderr: '',
        ),
        const PulumiCommandResult(
          exitCode: 0,
          stdout: '[{"kind":"update","result":"succeeded"}]',
          stderr: '',
        ),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );
      final stack = Stack('dev', workspace);

      final history = await stack.history(pageSize: 2, page: 3);
      final info = await stack.info(showSecrets: true);

      expect(history, hasLength(2));
      expect(history.first['kind'], equals('update'));
      expect(info?['kind'], equals('update'));
      expect(
        runner.requests[0].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'dev',
          '--page-size',
          '2',
          '--page',
          '3',
        ]),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'dev',
          '--page-size',
          '1',
          '--show-secrets',
        ]),
      );
    });

    test('cancel uses expected command shape', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );
      final stack = Stack('dev', workspace);

      await stack.cancel();

      expect(
        runner.requests.single.arguments,
        equals(<String>['cancel', '--stack', 'dev', '--yes']),
      );
    });

    test(
      'throws PulumiCommandException when check mode command fails',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(
            exitCode: 1,
            stdout: '',
            stderr: 'simulated failure',
          ),
        ]);
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );

        await expectLater(
          workspace.runPulumiCommand(<String>['whoami']),
          throwsA(isA<PulumiCommandException>()),
        );
        expect(runner.requests.single.arguments, equals(<String>['whoami']));
      },
    );

    test('workspace environment variables are forwarded to commands', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
          environmentVariables: const <String, String>{
            'PULUMI_CONFIG_PASSPHRASE': 'pulumi-dart-dev',
          },
        ),
      );

      await workspace.runPulumiCommand(<String>['whoami'], check: false);

      expect(
        runner.requests.single.environment['PULUMI_CONFIG_PASSPHRASE'],
        equals('pulumi-dart-dev'),
      );
    });

    test('workspace env var APIs mutate scoped environment', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
          environmentVariables: const <String, String>{'A': '1'},
        ),
      );

      expect(workspace.getEnvVars()['A'], equals('1'));

      workspace.setEnvVar('B', '2');
      workspace.unsetEnvVar('A');
      workspace.setEnvVars(const <String, String>{'C': '3'});

      expect(workspace.getEnvVars().containsKey('A'), isFalse);
      expect(workspace.getEnvVars()['B'], isNull);
      expect(workspace.getEnvVars()['C'], equals('3'));

      await workspace.runPulumiCommand(<String>['whoami'], check: false);

      expect(runner.requests.single.environment['A'], isNull);
      expect(runner.requests.single.environment['B'], isNull);
      expect(runner.requests.single.environment['C'], equals('3'));
    });

    test('whoAmI uses json output when supported', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(
          exitCode: 0,
          stdout: '{"user":"alice","url":"https://app.pulumi.com"}',
          stderr: '',
        ),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      final who = await workspace.whoAmI();

      expect(who['user'], equals('alice'));
      expect(
        runner.requests.single.arguments,
        equals(<String>['whoami', '--json']),
      );
    });

    test('whoAmI falls back to plain output on older cli behavior', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(
          exitCode: 1,
          stdout: '',
          stderr: 'unknown flag: --json',
        ),
        const PulumiCommandResult(exitCode: 0, stdout: 'alice\n', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      final who = await workspace.whoAmI();

      expect(who['user'], equals('alice'));
      expect(
        runner.requests[0].arguments,
        equals(<String>['whoami', '--json']),
      );
      expect(runner.requests[1].arguments, equals(<String>['whoami']));
    });

    test('listStacks and stack parse current stack summary', () async {
      const payload =
          '[{"name":"dev","current":true},{"name":"stage","current":false}]';
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: payload, stderr: ''),
        const PulumiCommandResult(exitCode: 0, stdout: payload, stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      final allStacks = await workspace.listStacks(all: true);
      final current = await workspace.stack();

      expect(allStacks, hasLength(2));
      expect(allStacks.first.name, equals('dev'));
      expect(allStacks.first.current, isTrue);
      expect(current?.name, equals('dev'));
      expect(
        runner.requests[0].arguments,
        equals(<String>['stack', 'ls', '--json', '--all']),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>['stack', 'ls', '--json']),
      );
    });

    test('pulumiVersion resolves and validates CLI version output', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(
          exitCode: 0,
          stdout: 'v3.140.0\n',
          stderr: '',
        ),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      final version = await workspace.pulumiVersion();

      expect(version, isNotNull);
      expect(version.toString(), equals('3.140.0'));
      expect(runner.requests.single.arguments, equals(<String>['version']));
      expect(
        runner.requests.single.environment['PULUMI_SKIP_UPDATE_CHECK'],
        equals('true'),
      );
    });

    test(
      'pulumiVersion throws on invalid output when version checks enabled',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(
            exitCode: 0,
            stdout: 'not-a-version',
            stderr: '',
          ),
        ]);
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );

        await expectLater(
          workspace.pulumiVersion(skipCheck: false),
          throwsA(isA<AutomationInvalidVersionException>()),
        );
      },
    );

    test(
      'stack config json/refresh and tag commands use expected shapes',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          const PulumiCommandResult(
            exitCode: 0,
            stdout:
                '{"proj:value":{"value":"hello","secret":false},"proj:secret":{"value":"s3cret","secret":true}}',
            stderr: '',
          ),
          const PulumiCommandResult(
            exitCode: 0,
            stdout: 'team-a\n',
            stderr: '',
          ),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          const PulumiCommandResult(
            exitCode: 0,
            stdout: '{"owner":"team-a","service":"payments"}',
            stderr: '',
          ),
        ]);
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );
        final stack = Stack('dev', workspace);

        await stack.setAllConfigJson(
          '{"proj:value":{"value":"hello","secret":false}}',
        );
        final refreshed = await stack.refreshConfig();
        final owner = await stack.getTag('owner');
        await stack.setTag('owner', 'team-a');
        await stack.removeTag('owner');
        final tags = await stack.listTags();

        expect(refreshed['proj:value']?.value, equals('hello'));
        expect(refreshed['proj:secret']?.secret, isTrue);
        expect(owner, equals('team-a'));
        expect(tags['owner'], equals('team-a'));
        expect(tags['service'], equals('payments'));

        expect(
          runner.requests[0].arguments,
          equals(<String>[
            'config',
            'set-all',
            '--stack',
            'dev',
            '--json',
            '{"proj:value":{"value":"hello","secret":false}}',
          ]),
        );
        expect(
          runner.requests[1].arguments,
          equals(<String>['config', 'refresh', '--force', '--stack', 'dev']),
        );
        expect(
          runner.requests[2].arguments,
          equals(<String>[
            'config',
            '--show-secrets',
            '--json',
            '--stack',
            'dev',
          ]),
        );
        expect(
          runner.requests[3].arguments,
          equals(<String>['stack', 'tag', 'get', 'owner', '--stack', 'dev']),
        );
        expect(
          runner.requests[4].arguments,
          equals(<String>[
            'stack',
            'tag',
            'set',
            'owner',
            'team-a',
            '--stack',
            'dev',
          ]),
        );
        expect(
          runner.requests[5].arguments,
          equals(<String>['stack', 'tag', 'rm', 'owner', '--stack', 'dev']),
        );
        expect(
          runner.requests[6].arguments,
          equals(<String>['stack', 'tag', 'ls', '--json', '--stack', 'dev']),
        );
      },
    );

    test('stack export/import delegates to workspace state commands', () async {
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
      final stack = Stack('dev', workspace);

      final state = await stack.exportStack();
      await stack.importStack(<String, dynamic>{
        'version': 3,
        'deployment': <String, dynamic>{'resources': <dynamic>[]},
      });

      expect(state['version'], equals(3));
      expect(
        runner.requests[0].arguments,
        equals(<String>['stack', 'export', '--stack', 'dev', '--show-secrets']),
      );
      expect(runner.requests[1].arguments[0], equals('stack'));
      expect(runner.requests[1].arguments[1], equals('import'));
      expect(runner.requests[1].arguments[2], equals('--file'));
      expect(runner.requests[1].arguments[4], equals('--stack'));
      expect(runner.requests[1].arguments[5], equals('dev'));
    });
  });
}
