// ignore_for_file: unused_field

import 'dart:async';
import 'dart:collection';

import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart' as pb;

enum LogSeverity { debug, info, warning, error }

class EngineLogger {
  final Deployment _deployment;
  final Engine _engine;
  final Queue<_LogOperation> _logQueue = Queue<_LogOperation>();
  int _errorCount = 0;
  bool _isProcessing = false;

  EngineLogger(this._deployment, this._engine);

  bool get loggedErrors => _errorCount > 0;

  Future<void> debug(
    String message, {
    Resource? resource,
    int? streamId,
    bool? ephemeral,
  }) {
    return _enqueueLog(
      LogSeverity.debug,
      message,
      resource,
      streamId,
      ephemeral,
    );
  }

  Future<void> info(
    String message, {
    Resource? resource,
    int? streamId,
    bool? ephemeral,
  }) {
    return _enqueueLog(
      LogSeverity.info,
      message,
      resource,
      streamId,
      ephemeral,
    );
  }

  Future<void> warn(
    String message, {
    Resource? resource,
    int? streamId,
    bool? ephemeral,
  }) {
    return _enqueueLog(
      LogSeverity.warning,
      message,
      resource,
      streamId,
      ephemeral,
    );
  }

  Future<void> error(
    String message, {
    Resource? resource,
    int? streamId,
    bool? ephemeral,
  }) {
    return _enqueueLog(
      LogSeverity.error,
      message,
      resource,
      streamId,
      ephemeral,
    );
  }

  Future<void> _enqueueLog(
    LogSeverity severity,
    String message,
    Resource? resource,
    int? streamId,
    bool? ephemeral,
  ) {
    final completer = Completer<void>();
    _logQueue.add(
      _LogOperation(
        severity: severity,
        message: message,
        resource: resource,
        streamId: streamId,
        ephemeral: ephemeral,
        completer: completer,
      ),
    );
    _processQueue();
    return completer.future;
  }

  void _processQueue() {
    if (_isProcessing) return;
    _isProcessing = true;

    Future<void> process() async {
      while (_logQueue.isNotEmpty) {
        final operation = _logQueue.removeFirst();
        try {
          await _logAsync(
            operation.severity,
            operation.message,
            operation.resource,
            operation.streamId,
            operation.ephemeral,
          );
          operation.completer.complete();
        } catch (e) {
          operation.completer.completeError(e);
        }
      }
      _isProcessing = false;
    }

    process();
  }

  Future<void> _logAsync(
    LogSeverity severity,
    String message,
    Resource? resource,
    int? streamId,
    bool? ephemeral,
  ) async {
    try {
      final urn = await _tryGetResourceUrnAsync(resource);

      await _engine.log(
        LogRequest(
          severity: severity,
          message: message,
          urn: urn,
          streamId: streamId ?? 0,
          ephemeral: ephemeral ?? false,
        ),
      );

      if (severity == LogSeverity.error) {
        _errorCount++;
      }
    } catch (e) {
      _errorCount++;
      throw LogException(e);
    }
  }

  Future<String> _tryGetResourceUrnAsync(Resource? resource) async {
    if (resource != null) {
      try {
        return await resource.urn.getValue(whenUnknown: '');
      } catch (_) {
        // If getting the URN fails, we don't want to fail sending the logging message.
        // We'll just send the logging message unassociated with any resource.
      }
    }
    return '';
  }

  /// Waits for all pending log operations to complete.
  Future<void> waitForPendingLogs() async {
    while (_logQueue.isNotEmpty || _isProcessing) {
      await Future.delayed(Duration(milliseconds: 10));
    }
  }
}

class _LogOperation {
  final LogSeverity severity;
  final String message;
  final Resource? resource;
  final int? streamId;
  final bool? ephemeral;
  final Completer<void> completer;

  _LogOperation({
    required this.severity,
    required this.message,
    this.resource,
    this.streamId,
    this.ephemeral,
    required this.completer,
  });
}

class LogException implements Exception {
  final dynamic originalException;

  LogException(this.originalException);

  @override
  String toString() => 'LogException: $originalException';
}

class LogRequest {
  final LogSeverity severity;
  final String message;
  final String urn;
  final int streamId;
  final bool ephemeral;

  LogRequest({
    required this.severity,
    required this.message,
    required this.urn,
    required this.streamId,
    required this.ephemeral,
  });

  // Convert to gRPC LogRequest
  pb.LogRequest toGrpc() {
    return pb.LogRequest(
      severity: pb.LogSeverity.valueOf(severity.index),
      message: message,
      urn: urn,
      streamId: streamId,
      ephemeral: ephemeral,
    );
  }
}
