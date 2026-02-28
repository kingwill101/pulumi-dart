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
          's3cret',
          '--stack',
          'dev',
          '--secret',
        ]),
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
  });
}
