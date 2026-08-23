// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError {
  /// (Output)
  /// The row number where the error was detected.
  final pulumi.Input<int>? rowNumber;

  /// Creates a new [ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError].
  /// [rowNumber] (Output)
  const ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError({
    this.rowNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowNumber': ?rowNumber,
    };
  }

  factory ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError(
      rowNumber: (() { final guardedValue = map['rowNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
