// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError {
  /// (Output)
  /// The row number where the error was detected.
  final pulumi.Input<int>? rowNumber;
  /// (Output)
  /// The name of the sheet where the error was detected.
  final pulumi.Input<String>? sheet;

  /// Creates a new [ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError].
  /// [rowNumber] (Output)
  /// [sheet] (Output)
  const ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError({
    this.rowNumber,
    this.sheet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowNumber': ?rowNumber,
      'sheet': ?sheet,
    };
  }

  factory ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError(
      rowNumber: (() { final guardedValue = map['rowNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sheet: (() { final guardedValue = map['sheet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
