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
  TestIssue({
    this.category,
    this.errorMessage,
    this.severity,
    this.stackTrace,
    this.type,
    this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?pulumi.Input.mapOptionalInputValue<TestIssueCategory, String>(category, (value) => value.value),
      'errorMessage': ?errorMessage,
      'severity': ?pulumi.Input.mapOptionalInputValue<TestIssueSeverity, String>(severity, (value) => value.value),
      'stackTrace': ?pulumi.Input.mapOptionalInputValue<StackTrace, Map<String, dynamic>>(stackTrace, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<TestIssueType, String>(type, (value) => value.value),
      'warning': ?pulumi.Input.mapOptionalInputValue<Any, Map<String, dynamic>>(warning, (value) => value.toMap()),
    };
  }

  factory TestIssue.fromMap(Map<String, dynamic> map) {
    return TestIssue(
      category: map['category'] == null ? null : (TestIssueCategory.fromValue(map['category'] as String)).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      severity: map['severity'] == null ? null : (TestIssueSeverity.fromValue(map['severity'] as String)).input(),
      stackTrace: map['stackTrace'] == null ? null : (StackTrace.fromMap((map['stackTrace'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (TestIssueType.fromValue(map['type'] as String)).input(),
      warning: map['warning'] == null ? null : (Any.fromMap((map['warning'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

