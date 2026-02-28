import 'dart:convert';

import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

void main() {
  group('automation events', () {
    test(
      'StepEventMetadata.fromJson deserializes detailedDiff camelCase key',
      () {
        final metadata = StepEventMetadata.fromJson(<String, dynamic>{
          'op': 'update',
          'detailedDiff': <String, dynamic>{
            'tags': <String, dynamic>{'diffKind': 'update', 'inputDiff': false},
            'name': <String, dynamic>{'diffKind': 'update', 'inputDiff': true},
          },
        });

        expect(metadata.detailedDiff, isNotNull);
        expect(metadata.detailedDiff, hasLength(2));
        expect(
          metadata.detailedDiff!['tags']?.diffKind,
          equals(DiffKind.update),
        );
        expect(metadata.detailedDiff!['tags']?.inputDiff, isFalse);
        expect(
          metadata.detailedDiff!['name']?.diffKind,
          equals(DiffKind.update),
        );
        expect(metadata.detailedDiff!['name']?.inputDiff, isTrue);
      },
    );

    test('PolicyEvent.fromJson deserializes resourceUrn camelCase key', () {
      final event = PolicyEvent.fromJson(<String, dynamic>{
        'resourceUrn': 'urn:pulumi:stack::project::type::name',
      });

      expect(
        event.resourceUrn,
        equals('urn:pulumi:stack::project::type::name'),
      );
    });
  });

  group('automation errors', () {
    final request = PulumiCommandRequest(
      executable: 'pulumi',
      arguments: const <String>['up'],
      workingDirectory: '.',
      environment: const <String, String>{},
      runInShell: false,
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );

    test('classifies stack not found errors', () {
      final error = createCommandException(
        request,
        const PulumiCommandResult(
          exitCode: 255,
          stdout: '',
          stderr: 'error: no stack named dev found',
        ),
      );
      expect(error, isA<StackNotFoundError>());
    });

    test('classifies stack already exists errors', () {
      final error = createCommandException(
        request,
        const PulumiCommandResult(
          exitCode: 255,
          stdout: '',
          stderr: 'error: stack dev already exists',
        ),
      );
      expect(error, isA<StackAlreadyExistsError>());
    });

    test('classifies concurrent update errors', () {
      final error = createCommandException(
        request,
        const PulumiCommandResult(
          exitCode: 255,
          stdout: '',
          stderr: '[409] Conflict: Another update is currently in progress.',
        ),
      );
      expect(error, isA<ConcurrentUpdateError>());
    });

    test('classifies compilation/runtime/inline errors', () {
      final compilation = createCommandException(
        request,
        const PulumiCommandResult(
          exitCode: 1,
          stdout: 'Build FAILED.',
          stderr: '',
        ),
      );
      final inline = createCommandException(
        request,
        const PulumiCommandResult(
          exitCode: 1,
          stdout: 'python inline source runtime error',
          stderr: '',
        ),
      );
      final runtime = createCommandException(
        request,
        const PulumiCommandResult(
          exitCode: 1,
          stdout: 'failed with an unhandled exception',
          stderr: '',
        ),
      );

      expect(compilation, isA<CompilationError>());
      expect(inline, isA<InlineSourceRuntimeError>());
      expect(runtime, isA<RuntimeError>());
    });

    test('falls back to generic CommandError', () {
      final error = createCommandException(
        request,
        const PulumiCommandResult(
          exitCode: 1,
          stdout: 'random failure',
          stderr: 'random stderr',
        ),
      );
      expect(error, isA<CommandError>());
      expect(error, isNot(isA<StackNotFoundError>()));
    });
  });
}
