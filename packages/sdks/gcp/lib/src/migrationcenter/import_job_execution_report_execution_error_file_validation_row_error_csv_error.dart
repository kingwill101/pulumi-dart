// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError {
  /// (Output)
  /// The row number where the error was detected.
  final pulumi.Input<int?>? rowNumber;

  /// Creates a new [ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError].
  /// [rowNumber] (Output)
  const ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError({
    this.rowNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowNumber': ?rowNumber,
    };
  }

  factory ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError(
      rowNumber: (() { final guardedValue = map['rowNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
