// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'any_response.dart';
import 'stack_trace_response.dart';

/// An issue detected occurring during a test execution.
class TestIssueResponse {
  /// Category of issue. Required.
  final pulumi.Input<String> category;

  /// A brief human-readable message describing the issue. Required.
  final pulumi.Input<String> errorMessage;

  /// Severity of issue. Required.
  final pulumi.Input<String> severity;

  /// Deprecated in favor of stack trace fields inside specific warnings.
  final pulumi.Input<StackTraceResponse> stackTrace;

  /// Type of issue. Required.
  final pulumi.Input<String> type;

  /// Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  final pulumi.Input<AnyResponse> warning;

  /// Creates a new [TestIssueResponse].
  /// [category] Category of issue. Required.
  /// [errorMessage] A brief human-readable message describing the issue. Required.
  /// [severity] Severity of issue. Required.
  /// [stackTrace] Deprecated in favor of stack trace fields inside specific warnings.
  /// [type] Type of issue. Required.
  /// [warning] Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  TestIssueResponse({
    required this.category,
    required this.errorMessage,
    required this.severity,
    required this.stackTrace,
    required this.type,
    required this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'errorMessage': errorMessage,
      'severity': severity,
      'stackTrace':
          pulumi.Input.mapInputValue<StackTraceResponse, Map<String, dynamic>>(
            stackTrace,
            (value) => value.toMap(),
          ),
      'type': type,
      'warning': pulumi.Input.mapInputValue<AnyResponse, Map<String, dynamic>>(
        warning,
        (value) => value.toMap(),
      ),
    };
  }

  factory TestIssueResponse.fromMap(Map<String, dynamic> map) {
    return TestIssueResponse(
      category: pulumi.Input.fromValue(map['category'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      stackTrace: pulumi.Input.fromValue(
        StackTraceResponse.fromMap(
          (map['stackTrace']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
      warning: pulumi.Input.fromValue(
        AnyResponse.fromMap((map['warning']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
