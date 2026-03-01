// ignore_for_file: unused_element, unnecessary_cast

import 'stack_trace_response.dart';

/// Error describes why the execution was abnormally terminated.
class ErrorResponse {
  /// Human-readable stack trace string.
  final String context;
  /// Error message and data returned represented as a JSON string.
  final String payload;
  /// Stack trace with detailed information of where error was generated.
  final StackTraceResponse stackTrace;

  /// Creates a new [ErrorResponse].
  /// [context] Human-readable stack trace string.
  /// [payload] Error message and data returned represented as a JSON string.
  /// [stackTrace] Stack trace with detailed information of where error was generated.
  ErrorResponse({
    required this.context,
    required this.payload,
    required this.stackTrace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': context,
      'payload': payload,
      'stackTrace': stackTrace.toMap(),
    };
  }

  factory ErrorResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponse(
      context: map['context'] as String,
      payload: map['payload'] as String,
      stackTrace: StackTraceResponse.fromMap((map['stackTrace'] as Map).cast<String, dynamic>()),
    );
  }
}

