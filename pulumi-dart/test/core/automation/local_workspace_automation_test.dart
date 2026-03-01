import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

class _FakeRunner {
  _FakeRunner(List<PulumiCommandResult> responses, {this.onRequest})
    : _responses = Queue<PulumiCommandResult>.from(responses);

  final Queue<PulumiCommandResult> _responses;
  final List<PulumiCommandRequest> requests = <PulumiCommandRequest>[];
  final Future<void> Function(PulumiCommandRequest request)? onRequest;

  Future<PulumiCommandResult> call(PulumiCommandRequest request) async {
    requests.add(request);
    if (onRequest != null) {
      await onRequest!(request);
    }
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

    test('createStackInWorkspace passes configured secrets provider', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
          secretsProvider: 'passphrase',
        ),
      );

      await workspace.createStackInWorkspace('dev');

      expect(
        runner.requests.single.arguments,
        equals(<String>[
          'stack',
          'init',
          'dev',
          '--secrets-provider',
          'passphrase',
        ]),
      );
    });

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

    test('renameResult updates stack name and loads summary', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: 'renamed', stderr: ''),
        const PulumiCommandResult(
          exitCode: 0,
          stdout:
              '[{"kind":"rename","startTime":"2025-01-01T00:00:00Z","endTime":"2025-01-01T00:01:00Z","result":"succeeded","version":10,"resourceChanges":{"same":1}}]',
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

      final result = await stack.renameResult('prod');

      expect(result.succeeded, isTrue);
      expect(stack.name, equals('prod'));
      expect(result.summary?.parsedKind, equals(AutomationUpdateKind.rename));
      expect(
        result.summary?.parsedResult,
        equals(AutomationUpdateResult.succeeded),
      );
      expect(result.summary?.resourceChanges['same'], equals(1));
      expect(
        runner.requests[0].arguments,
        equals(<String>['stack', 'rename', 'prod']),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'prod',
          '--page-size',
          '1',
        ]),
      );
    });

    test(
      'renameResult rejects showSummarySecrets for remote workspaces',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        ]);
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
            remote: true,
            remoteArgs: const <String>['--remote'],
          ),
        );
        final stack = Stack('dev', workspace);

        await expectLater(
          stack.renameResult('prod', showSummarySecrets: true),
          throwsA(isA<ArgumentError>()),
        );
        expect(runner.requests, isEmpty);
      },
    );

    test('renameResult appends remote args in remote workspaces', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
          remote: true,
          remoteArgs: const <String>[
            '--remote',
            '--remote-agent-pool-id',
            'p1',
          ],
        ),
      );
      final stack = Stack('dev', workspace);

      await stack.renameResult('prod', includeSummary: false);

      expect(
        runner.requests.single.arguments,
        equals(<String>[
          'stack',
          'rename',
          'prod',
          '--remote',
          '--remote-agent-pool-id',
          'p1',
        ]),
      );
      expect(stack.name, equals('prod'));
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

    test('pulumiHome is forwarded as PULUMI_HOME', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
          pulumiHome: '/tmp/pulumi-home',
        ),
      );

      await workspace.runPulumiCommand(<String>['whoami'], check: false);

      expect(
        runner.requests.single.environment['PULUMI_HOME'],
        equals('/tmp/pulumi-home'),
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

    test('removeStack supports force and preserveConfig flags', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      await workspace.removeStack(
        'dev',
        yes: true,
        force: true,
        preserveConfig: true,
      );

      expect(
        runner.requests.single.arguments,
        equals(<String>[
          'stack',
          'rm',
          'dev',
          '--yes',
          '--force',
          '--preserve-config',
        ]),
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

    test(
      'importResources writes import file, reads generated code, and loads summary',
      () async {
        Map<String, dynamic>? observedImportPayload;
        String? observedGeneratedCodePath;

        final runner = _FakeRunner(
          <PulumiCommandResult>[
            const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
            const PulumiCommandResult(
              exitCode: 0,
              stdout:
                  '[{"kind":"import","startTime":"2025-01-04T00:00:00Z","endTime":"2025-01-04T00:01:00Z","result":"succeeded","version":45,"resourceChanges":{"import":2}}]',
              stderr: '',
            ),
          ],
          onRequest: (request) async {
            if (request.arguments.first != 'import') {
              return;
            }
            final fileIndex = request.arguments.indexOf('--file');
            if (fileIndex != -1) {
              final importPath = request.arguments[fileIndex + 1];
              observedImportPayload =
                  jsonDecode(await File(importPath).readAsString())
                      as Map<String, dynamic>;
            }
            final outArg = request.arguments.firstWhere(
              (arg) => arg.startsWith('--out='),
              orElse: () => '',
            );
            if (outArg.isNotEmpty) {
              observedGeneratedCodePath = outArg.substring('--out='.length);
              await File(
                observedGeneratedCodePath!,
              ).writeAsString('// generated import code\n');
            }
          },
        );

        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );
        final stack = Stack('dev', workspace);

        final result = await stack.importResources(
          message: 'import resources',
          resources: const <AutomationImportResource>[
            AutomationImportResource(
              type: 'aws:s3/bucket:Bucket',
              name: 'bucket',
              id: 'bucket-id',
              provider: 'default_5_42_0',
              properties: <String>['acl'],
            ),
          ],
          nameTable: const <String, String>{
            'default_5_42_0':
                'urn:pulumi:dev::proj::pulumi:providers:aws::default_5_42_0::provider-id',
          },
          protect: false,
          converter: 'terraform',
          converterArgs: const <String>['./terraform.tfstate'],
          showSummarySecrets: true,
        );

        expect(result.succeeded, isTrue);
        expect(result.generatedCode, contains('// generated import code'));
        expect(
          result.summary?.parsedKind,
          equals(AutomationUpdateKind.importOperation),
        );
        expect(result.summary?.resourceChanges['import'], equals(2));
        expect(observedGeneratedCodePath, isNotNull);
        expect(observedImportPayload, isNotNull);
        expect(observedImportPayload!['resources'], hasLength(1));
        expect(
          (observedImportPayload!['nameTable'] as Map)['default_5_42_0'],
          isNotEmpty,
        );

        expect(
          runner.requests[0].arguments,
          containsAll(<String>[
            'import',
            '--stack',
            'dev',
            '--yes',
            '--skip-preview',
            '--message',
            'import resources',
            '--file',
            '--protect=false',
            '--from',
            'terraform',
            '--',
            './terraform.tfstate',
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
      },
    );

    test(
      'importResources generateCode false skips out file and returns empty generated code',
      () async {
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          const PulumiCommandResult(
            exitCode: 0,
            stdout:
                '[{"kind":"import","startTime":"2025-01-04T00:00:00Z","endTime":"2025-01-04T00:01:00Z","result":"succeeded","version":46,"resourceChanges":{"import":1}}]',
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

        final result = await stack.importResources(generateCode: false);

        expect(result.generatedCode, isEmpty);
        expect(runner.requests[0].arguments, contains('--generate-code=false'));
        expect(
          runner.requests[0].arguments.any((arg) => arg.startsWith('--out=')),
          isFalse,
        );
      },
    );

    test(
      'previewResult captures event log, serializes extra args, and calls post-command hook',
      () async {
        final postCommandStacks = <String>[];
        final observedEvents = <AutomationEngineEvent>[];
        final runner = _FakeRunner(
          <PulumiCommandResult>[
            const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          ],
          onRequest: (request) async {
            final args = request.arguments;
            final eventLogIndex = args.indexOf('--event-log');
            if (eventLogIndex == -1) {
              return;
            }
            final eventLogPath = args[eventLogIndex + 1];
            await File(eventLogPath).writeAsString(
              '{"sequence":1,"timestamp":"2025-01-01T00:00:00Z","summaryEvent":{"message":"preview complete","resourceChanges":{"create":2,"same":1}}}\n'
              '{"sequence":2,"timestamp":"2025-01-01T00:00:01Z","resourcePreEvent":{"metadata":{"op":"create"}}}\n',
            );
          },
        );
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
            serializeArgsForOp: (stackName) async => <String>[
              '--color',
              'never',
              '--stack',
              stackName,
            ],
            postCommandCallback: (stackName) async {
              postCommandStacks.add(stackName);
            },
          ),
        );
        final stack = Stack('dev', workspace);

        final result = await stack.previewResult(
          onEvent: observedEvents.add,
          extraArgs: const <String>['--diff'],
        );

        expect(result.succeeded, isTrue);
        expect(result.events, hasLength(2));
        expect(result.events.first.sequence, equals(1));
        expect(result.events.first.kind, equals('summaryEvent'));
        expect(result.events[1].sequence, equals(2));
        expect(result.events[1].kind, equals('resourcePreEvent'));
        expect(result.summaryEvent, isNotNull);
        expect(result.summaryEvent?.resourceChanges['create'], equals(2));
        expect(result.summaryEvent?.resourceChanges['same'], equals(1));
        expect(result.changeSummary['create'], equals(2));
        expect(result.changeSummary['same'], equals(1));
        expect(observedEvents, hasLength(2));
        expect(postCommandStacks, equals(<String>['dev']));
        expect(
          runner.requests.single.arguments.take(4).toList(),
          equals(<String>['preview', '--stack', 'dev', '--non-interactive']),
        );
        expect(runner.requests.single.arguments, contains('--diff'));
        expect(
          runner.requests.single.arguments,
          containsAll(<String>['--color', 'never']),
        );
        expect(runner.requests.single.arguments, contains('--event-log'));
      },
    );

    test(
      'previewRefreshResult and previewDestroyResult expose changeSummary',
      () async {
        final runner = _FakeRunner(
          <PulumiCommandResult>[
            const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
            const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
          ],
          onRequest: (request) async {
            final args = request.arguments;
            final eventLogIndex = args.indexOf('--event-log');
            if (eventLogIndex == -1) {
              return;
            }
            final eventLogPath = args[eventLogIndex + 1];
            final command = args.first;
            if (command == 'refresh') {
              await File(eventLogPath).writeAsString(
                '{"summaryEvent":{"resourceChanges":{"same":3}}}\n',
              );
              return;
            }
            await File(eventLogPath).writeAsString(
              '{"summaryEvent":{"resourceChanges":{"delete":4}}}\n',
            );
          },
        );
        final workspace = await LocalWorkspace.create(
          LocalWorkspaceOptions(
            workDir: tempDir.path,
            commandRunner: runner.call,
          ),
        );
        final stack = Stack('dev', workspace);

        final previewRefresh = await stack.previewRefreshResult();
        final previewDestroy = await stack.previewDestroyResult();

        expect(previewRefresh.summaryEvent, isNotNull);
        expect(previewDestroy.summaryEvent, isNotNull);
        expect(previewRefresh.changeSummary['same'], equals(3));
        expect(previewDestroy.changeSummary['delete'], equals(4));
        expect(
          runner.requests[0].arguments.take(4).toList(),
          equals(<String>['refresh', '--stack', 'dev', '--preview-only']),
        );
        expect(
          runner.requests[1].arguments.take(4).toList(),
          equals(<String>['destroy', '--stack', 'dev', '--preview-only']),
        );
        expect(runner.requests[0].arguments, contains('--event-log'));
        expect(runner.requests[1].arguments, contains('--event-log'));
      },
    );

    test(
      'upResult includeOutputs false avoids output fetch commands',
      () async {
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

        final result = await stack.upResult(
          includeOutputs: false,
          includeSummary: false,
        );

        expect(result.succeeded, isTrue);
        expect(result.outputs, isNull);
        expect(runner.requests, hasLength(1));
        final args = runner.requests.single.arguments;
        expect(
          args.take(6).toList(),
          equals(<String>[
            'up',
            '--stack',
            'dev',
            '--yes',
            '--skip-preview',
            '--non-interactive',
          ]),
        );
        expect(args, contains('--event-log'));
      },
    );

    test('upResult includeOutputs true loads typed outputs metadata', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
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

      final result = await stack.upResult(
        includeOutputs: true,
        includeSummary: false,
      );

      expect(result.succeeded, isTrue);
      expect(result.outputs, isNotNull);
      expect(result.outputs?['petName']?.value, equals('otis'));
      expect(result.outputs?['petName']?.secret, isTrue);
      expect(result.outputs?['region']?.value, equals('us-west-2'));
      expect(result.outputs?['region']?.secret, isFalse);
      expect(runner.requests, hasLength(3));
      expect(
        runner.requests[1].arguments,
        equals(<String>['stack', 'output', '--json', '--stack', 'dev']),
      );
      expect(
        runner.requests[2].arguments,
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

    test('up/refresh/destroy include typed summary parsed from history', () async {
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(
          exitCode: 0,
          stdout:
              '[{"kind":"update","startTime":"2025-01-01T00:00:00Z","endTime":"2025-01-01T00:01:00Z","message":"deploy","environment":{"PULUMI_HOME":"/tmp"},"config":{"proj:plain":{"value":"v","secret":false},"proj:secret":{"secret":true}},"result":"succeeded","version":42,"resourceChanges":{"create":2,"same":1}}]',
          stderr: '',
        ),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(
          exitCode: 0,
          stdout:
              '[{"kind":"refresh","startTime":"2025-01-02T00:00:00Z","endTime":"2025-01-02T00:01:00Z","message":"refresh","environment":{},"config":{},"result":"succeeded","version":43,"resourceChanges":{"same":3}}]',
          stderr: '',
        ),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(
          exitCode: 0,
          stdout:
              '[{"kind":"destroy","startTime":"2025-01-03T00:00:00Z","endTime":"2025-01-03T00:01:00Z","message":"destroy","environment":{},"config":{},"result":"succeeded","version":44,"resourceChanges":{"delete":2}}]',
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

      final upResult = await stack.upResult(includeOutputs: false);
      final refreshResult = await stack.refreshResult();
      final destroyResult = await stack.destroyResult();

      expect(upResult.summary, isNotNull);
      expect(upResult.summary?.kind, equals('update'));
      expect(upResult.summary?.parsedKind, equals(AutomationUpdateKind.update));
      expect(upResult.summary?.result, equals('succeeded'));
      expect(
        upResult.summary?.parsedResult,
        equals(AutomationUpdateResult.succeeded),
      );
      expect(upResult.summary?.version, equals(42));
      expect(upResult.summary?.resourceChanges['create'], equals(2));
      expect(upResult.summary?.resourceChanges['same'], equals(1));
      expect(
        upResult.summary?.parsedResourceChanges[AutomationOpType.create],
        equals(2),
      );
      expect(upResult.summary?.totalResourceChanges, equals(3));
      expect(upResult.summary?.isSuccessful, isTrue);
      expect(upResult.summary?.duration, equals(const Duration(minutes: 1)));
      expect(upResult.summary?.config['proj:plain']?.value, equals('v'));
      expect(upResult.summary?.config['proj:plain']?.secret, isFalse);
      expect(
        upResult.summary?.config['proj:secret']?.value,
        equals('[secret]'),
      );
      expect(upResult.summary?.config['proj:secret']?.secret, isTrue);

      expect(refreshResult.summary, isNotNull);
      expect(refreshResult.summary?.kind, equals('refresh'));
      expect(
        refreshResult.summary?.parsedKind,
        equals(AutomationUpdateKind.refresh),
      );
      expect(refreshResult.summary?.isSuccessful, isTrue);
      expect(refreshResult.summary?.resourceChanges['same'], equals(3));

      expect(destroyResult.summary, isNotNull);
      expect(destroyResult.summary?.kind, equals('destroy'));
      expect(
        destroyResult.summary?.parsedKind,
        equals(AutomationUpdateKind.destroy),
      );
      expect(destroyResult.summary?.isSuccessful, isTrue);
      expect(destroyResult.summary?.resourceChanges['delete'], equals(2));

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
        ]),
      );
      expect(
        runner.requests[3].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'dev',
          '--page-size',
          '1',
        ]),
      );
      expect(
        runner.requests[5].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'dev',
          '--page-size',
          '1',
        ]),
      );
    });

    test('post-command callback still runs when operation fails', () async {
      final postCommandStacks = <String>[];
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(
          exitCode: 1,
          stdout: '',
          stderr: 'simulated update failure',
        ),
      ]);
      final workspace = await LocalWorkspace.create(
        LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
          postCommandCallback: (stackName) async {
            postCommandStacks.add(stackName);
          },
        ),
      );
      final stack = Stack('dev', workspace);

      await expectLater(
        stack.destroyResult(),
        throwsA(isA<PulumiCommandException>()),
      );
      expect(postCommandStacks, equals(<String>['dev']));
    });

    test('createInlineStack scaffolds files and initializes stack', () async {
      final inlineDir = Directory('${tempDir.path}/inline');
      final runner = _FakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
      ]);

      final stack = await LocalWorkspace.createInlineStack(
        InlineProgramArgs(
          stackName: 'dev',
          projectName: 'My Inline App',
          program: '''
import 'package:pulumi/pulumi.dart';

class ExampleStack extends Stack {
  ExampleStack() : super('example');
}

Future<void> main() async {
  await Deployment.runAsync(() => ExampleStack());
}
''',
          workDir: inlineDir.path,
        ),
        options: LocalWorkspaceOptions(commandRunner: runner.call),
      );

      final pulumiYaml = File('${inlineDir.path}/Pulumi.yaml');
      final pubspec = File('${inlineDir.path}/pubspec.yaml');
      final mainFile = File('${inlineDir.path}/bin/my_inline_app.dart');
      expect(await pulumiYaml.exists(), isTrue);
      expect(await pubspec.exists(), isTrue);
      expect(await mainFile.exists(), isTrue);
      expect(
        await pulumiYaml.readAsString(),
        allOf(
          contains('name: My Inline App'),
          contains('runtime: dart'),
          contains('main: bin/my_inline_app.dart'),
        ),
      );
      expect(await pubspec.readAsString(), contains('pulumi: ^0.0.1-dev'));
      expect(stack.name, equals('dev'));
      expect(stack.workspace.workDir, equals(inlineDir.path));
      expect(
        runner.requests.single.arguments,
        equals(<String>['stack', 'init', 'dev']),
      );
      expect(runner.requests.single.workingDirectory, equals(inlineDir.path));
    });

    test(
      'createOrSelectInlineStack falls back to stack init for missing stack',
      () async {
        final inlineDir = Directory('${tempDir.path}/inline-create-select');
        final runner = _FakeRunner(<PulumiCommandResult>[
          const PulumiCommandResult(
            exitCode: 255,
            stdout: '',
            stderr: 'error: stack dev not found',
          ),
          const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        ]);

        final stack = await LocalWorkspace.createOrSelectInlineStack(
          InlineProgramArgs(
            stackName: 'dev',
            projectName: 'Inline Select App',
            program: 'void main() {}',
            workDir: inlineDir.path,
          ),
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
  });
}
