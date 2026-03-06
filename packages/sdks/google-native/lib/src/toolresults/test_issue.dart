// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'any.dart';
import 'stack_trace.dart';
import 'test_issue_category.dart';
import 'test_issue_severity.dart';
import 'test_issue_type.dart';

/// An issue detected occurring during a test execution.
class TestIssue {
  /// Category of issue. Required.
  final pulumi.Input<TestIssueCategory>? category;
  /// A brief human-readable message describing the issue. Required.
  final pulumi.Input<String>? errorMessage;
  /// Severity of issue. Required.
  final pulumi.Input<TestIssueSeverity>? severity;
  /// Deprecated in favor of stack trace fields inside specific warnings.
  final pulumi.Input<StackTrace>? stackTrace;
  /// Type of issue. Required.
  final pulumi.Input<TestIssueType>? type;
  /// Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  final pulumi.Input<Any>? warning;

  /// Creates a new [TestIssue].
  /// [category] Category of issue. Required.
  /// [errorMessage] A brief human-readable message describing the issue. Required.
  /// [severity] Severity of issue. Required.
  /// [stackTrace] Deprecated in favor of stack trace fields inside specific warnings.
  /// [type] Type of issue. Required.
  /// [warning] Warning message with additional details of the issue. Should always be a message from com.google.devtools.toolresults.v1.warnings
  const TestIssue({
    this.category,
    this.errorMessage,
    this.severity,
    this.stackTrace,
    this.type,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?pulumi.Input.mapOptionalInputValue<TestIssueCategory, String>(category, (value) => value.wireValue),
      'errorMessage': ?errorMessage,
      'severity': ?pulumi.Input.mapOptionalInputValue<TestIssueSeverity, String>(severity, (value) => value.wireValue),
      'stackTrace': ?pulumi.Input.mapOptionalInputValue<StackTrace, Map<String, dynamic>>(stackTrace, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<TestIssueType, String>(type, (value) => value.wireValue),
      'warning': ?pulumi.Input.mapOptionalInputValue<Any, Map<String, dynamic>>(warning, (value) => value.toMap()),
    };
  }

  factory TestIssue.fromMap(Map<String, dynamic> map) {
    return TestIssue(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TestIssueCategory.fromValue(guardedValue as String)); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TestIssueSeverity.fromValue(guardedValue as String)); })(),
      stackTrace: (() { final guardedValue = map['stackTrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackTrace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TestIssueType.fromValue(guardedValue as String)); })(),
      warning: (() { final guardedValue = map['warning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Any.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

