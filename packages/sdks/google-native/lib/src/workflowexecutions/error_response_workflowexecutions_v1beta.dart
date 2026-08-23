// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_trace_response_workflowexecutions_v1beta.dart';

/// Error describes why the execution was abnormally terminated.
class ErrorResponseWorkflowexecutionsV1beta {
  /// Human-readable stack trace string.
  final pulumi.Input<String> context;
  /// Error message and data returned represented as a JSON string.
  final pulumi.Input<String> payload;
  /// Stack trace with detailed information of where error was generated.
  final pulumi.Input<StackTraceResponseWorkflowexecutionsV1beta> stackTrace;

  /// Creates a new [ErrorResponseWorkflowexecutionsV1beta].
  /// [context] Human-readable stack trace string.
  /// [payload] Error message and data returned represented as a JSON string.
  /// [stackTrace] Stack trace with detailed information of where error was generated.
  const ErrorResponseWorkflowexecutionsV1beta({
    required this.context,
    required this.payload,
    required this.stackTrace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': context,
      'payload': payload,
      'stackTrace': pulumi.Input.mapInputValue<StackTraceResponseWorkflowexecutionsV1beta, Map<String, dynamic>>(stackTrace, (value) => value.toMap()),
    };
  }

  factory ErrorResponseWorkflowexecutionsV1beta.fromMap(Map<String, dynamic> map) {
    return ErrorResponseWorkflowexecutionsV1beta(
      context: pulumi.Input.fromValue(map['context'] as String),
      payload: pulumi.Input.fromValue(map['payload'] as String),
      stackTrace: pulumi.Input.fromValue(StackTraceResponseWorkflowexecutionsV1beta.fromMap((map['stackTrace']! as Map).cast<String, dynamic>())),
    );
  }
}
