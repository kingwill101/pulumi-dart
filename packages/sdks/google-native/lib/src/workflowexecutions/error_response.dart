// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_trace_response.dart';

/// Error describes why the execution was abnormally terminated.
class ErrorResponse {
  /// Human-readable stack trace string.
  final pulumi.Input<String> context;
  /// Error message and data returned represented as a JSON string.
  final pulumi.Input<String> payload;
  /// Stack trace with detailed information of where error was generated.
  final pulumi.Input<StackTraceResponse> stackTrace;

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
      'stackTrace': pulumi.Input.mapInputValue<StackTraceResponse, Map<String, dynamic>>(stackTrace, (value) => value.toMap()),
    };
  }

  factory ErrorResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponse(
      context: pulumi.Input.fromValue(map['context'] as String),
      payload: pulumi.Input.fromValue(map['payload'] as String),
      stackTrace: pulumi.Input.fromValue(StackTraceResponse.fromMap((map['stackTrace']! as Map).cast<String, dynamic>())),
    );
  }
}

