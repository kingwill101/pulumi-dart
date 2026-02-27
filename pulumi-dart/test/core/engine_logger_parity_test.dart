import 'dart:async';

import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _RecordingEngine implements Engine {
  final List<LogRequest> requests = [];
  Duration delay = Duration.zero;
  Object? throwOnLog;

  _RecordingEngine();

  @override
  Future<void> log(LogRequest request) async {
    if (delay > Duration.zero) {
      await Future<void>.delayed(delay);
    }
    if (throwOnLog != null) {
      throw throwOnLog!;
    }
    requests.add(request);
  }
}

void main() {
  group('engine logger parity', () {
    late MockDeployment deployment;
    late _RecordingEngine engine;
    late EngineLogger logger;

    setUp(() {
      deployment = MockDeployment();
      engine = _RecordingEngine();
      logger = EngineLogger(deployment, engine);
    });

    test('queues logs in order and preserves defaults', () async {
      await Future.wait([
        logger.debug('debug'),
        logger.info('info'),
        logger.warn('warn'),
        logger.error('error'),
      ]);

      expect(engine.requests.length, 4);
      expect(engine.requests.map((r) => r.message), [
        'debug',
        'info',
        'warn',
        'error',
      ]);
      expect(engine.requests.map((r) => r.severity), [
        LogSeverity.debug,
        LogSeverity.info,
        LogSeverity.warning,
        LogSeverity.error,
      ]);
      expect(engine.requests.every((r) => r.streamId == 0), isTrue);
      expect(engine.requests.every((r) => r.ephemeral == false), isTrue);
      expect(logger.loggedErrors, isTrue);
    });

    test('includes explicit stream and ephemeral values', () async {
      await logger.info('with-options', streamId: 42, ephemeral: true);

      expect(engine.requests, hasLength(1));
      expect(engine.requests.single.streamId, 42);
      expect(engine.requests.single.ephemeral, isTrue);
    });

    test('uses resource urn when available', () async {
      final resource = MockResource();
      when(resource.urn).thenReturn(
        Output.create('urn:pulumi:stack::project::pkg:index:Type::name'),
      );

      await logger.info('with-resource', resource: resource);

      expect(
        engine.requests.single.urn,
        'urn:pulumi:stack::project::pkg:index:Type::name',
      );
    });

    test('falls back to empty urn when reading resource urn throws', () async {
      final resource = MockResource();
      when(resource.urn).thenReturn(
        Output<String>(
          Future<OutputData<String>>.error(StateError('urn failed')),
        ),
      );

      await logger.info('with-failing-resource', resource: resource);

      expect(engine.requests.single.urn, isEmpty);
    });

    test('surfaces engine failures as LogException', () async {
      engine.throwOnLog = StateError('engine down');

      await expectLater(
        logger.warn('boom'),
        throwsA(
          isA<LogException>().having(
            (e) => e.originalException.toString(),
            'originalException',
            contains('engine down'),
          ),
        ),
      );

      expect(logger.loggedErrors, isTrue);
    });

    test('waitForPendingLogs waits for delayed queue processing', () async {
      engine.delay = Duration(milliseconds: 10);

      final first = logger.info('first');
      final second = logger.info('second');
      await logger.waitForPendingLogs();
      await Future.wait([first, second]);

      expect(engine.requests.map((r) => r.message), ['first', 'second']);
    });

    test('LogRequest.toGrpc keeps field values', () {
      final request = LogRequest(
        severity: LogSeverity.warning,
        message: 'hello',
        urn: 'urn:pulumi:test',
        streamId: 7,
        ephemeral: true,
      );

      final grpc = request.toGrpc();
      expect(grpc.message, 'hello');
      expect(grpc.urn, 'urn:pulumi:test');
      expect(grpc.streamId, 7);
      expect(grpc.ephemeral, isTrue);
      expect(grpc.severity, isNotNull);
    });

    test('LogException.toString includes wrapped error', () {
      final exception = LogException(StateError('boom'));
      expect(exception.toString(), contains('LogException:'));
      expect(exception.toString(), contains('boom'));
    });
  });
}
