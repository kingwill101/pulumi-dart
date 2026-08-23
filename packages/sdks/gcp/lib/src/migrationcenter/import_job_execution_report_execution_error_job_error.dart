// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportJobExecutionReportExecutionErrorJobError {
  /// (Output)
  /// The error information.
  final pulumi.Input<String>? errorDetails;
  /// (Output)
  /// The severity of the error.
  /// Possible values:
  /// ERROR
  /// WARNING
  /// INFO
  final pulumi.Input<String>? severity;

  /// Creates a new [ImportJobExecutionReportExecutionErrorJobError].
  /// [errorDetails] (Output)
  /// [severity] (Output)
  const ImportJobExecutionReportExecutionErrorJobError({
    this.errorDetails,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?errorDetails,
      'severity': ?severity,
    };
  }

  factory ImportJobExecutionReportExecutionErrorJobError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorJobError(
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
