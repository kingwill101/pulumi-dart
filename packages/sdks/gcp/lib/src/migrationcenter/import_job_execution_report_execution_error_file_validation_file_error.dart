// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportJobExecutionReportExecutionErrorFileValidationFileError {
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

  /// Creates a new [ImportJobExecutionReportExecutionErrorFileValidationFileError].
  /// [errorDetails] (Output)
  /// [severity] (Output)
  const ImportJobExecutionReportExecutionErrorFileValidationFileError({
    this.errorDetails,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?errorDetails,
      'severity': ?severity,
    };
  }

  factory ImportJobExecutionReportExecutionErrorFileValidationFileError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorFileValidationFileError(
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
