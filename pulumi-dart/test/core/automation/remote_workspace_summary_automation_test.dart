import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

class _SummaryFakeRunner {
  _SummaryFakeRunner(List<PulumiCommandResult> responses)
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
  group('automation remote workspace summary parsing', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp(
        'pulumi-remote-summary-automation-',
      );
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('remote stack upResult includes typed summary fields', () async {
      final runner = _SummaryFakeRunner(<PulumiCommandResult>[
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        const PulumiCommandResult(exitCode: 0, stdout: '', stderr: ''),
        PulumiCommandResult(
          exitCode: 0,
          stdout: jsonEncode(<Map<String, dynamic>>[
            <String, dynamic>{
              'kind': 'update',
              'startTime': '2025-01-10T00:00:00Z',
              'endTime': '2025-01-10T00:00:30Z',
              'message': 'remote deploy',
              'environment': <String, String>{'PULUMI_HOME': '/tmp'},
              'config': <String, Object?>{},
              'result': 'succeeded',
              'version': 100,
              'deployment': <String, Object?>{'resources': <Object?>[]},
              'policyPacks': <String, String>{'org/policy-pack': 'v4.0.0'},
              'resourceChanges': <String, int>{'same': 1},
            },
          ]),
          stderr: '',
        ),
      ]);

      const args = RemoteGitProgramArgs(
        stackName: 'owner/project/stack',
        url: 'https://github.com/pulumi/test-repo.git',
        branch: 'refs/heads/main',
      );

      final stack = await RemoteWorkspace.createStack(
        args,
        workspaceOptions: LocalWorkspaceOptions(
          workDir: tempDir.path,
          commandRunner: runner.call,
        ),
      );

      final result = await stack.upResult(
        includeOutputs: false,
        captureEvents: false,
      );

      expect(result.succeeded, isTrue);
      expect(result.summary, isNotNull);
      expect(result.summary?.parsedKind, equals(AutomationUpdateKind.update));
      expect(
        result.summary?.parsedResult,
        equals(AutomationUpdateResult.succeeded),
      );
      expect(result.summary?.deploymentMap?['resources'], isEmpty);
      expect(result.summary?.policyPacks['org/policy-pack'], equals('v4.0.0'));
      expect(result.summary?.resourceChanges['same'], equals(1));

      expect(runner.requests, hasLength(3));
      expect(
        runner.requests[0].arguments,
        equals(<String>['stack', 'init', 'owner/project/stack', '--no-select']),
      );
      expect(
        runner.requests[1].arguments,
        equals(<String>[
          'up',
          '--stack',
          'owner/project/stack',
          '--yes',
          '--skip-preview',
          '--non-interactive',
          '--remote',
          'https://github.com/pulumi/test-repo.git',
          '--remote-git-branch',
          'refs/heads/main',
        ]),
      );
      expect(
        runner.requests[2].arguments,
        equals(<String>[
          'stack',
          'history',
          '--json',
          '--stack',
          'owner/project/stack',
          '--page-size',
          '1',
        ]),
      );
    });
  });
}
