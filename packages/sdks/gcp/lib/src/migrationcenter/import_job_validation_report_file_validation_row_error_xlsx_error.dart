// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportJobValidationReportFileValidationRowErrorXlsxError {
  /// (Output)
  /// The row number where the error was detected.
  final pulumi.Input<int?>? rowNumber;
  /// (Output)
  /// The name of the sheet where the error was detected.
  final pulumi.Input<String?>? sheet;

  /// Creates a new [ImportJobValidationReportFileValidationRowErrorXlsxError].
  /// [rowNumber] (Output)
  /// [sheet] (Output)
  const ImportJobValidationReportFileValidationRowErrorXlsxError({
    this.rowNumber,
    this.sheet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowNumber': ?rowNumber,
      'sheet': ?sheet,
    };
  }

  factory ImportJobValidationReportFileValidationRowErrorXlsxError.fromMap(Map<String, dynamic> map) {
    return ImportJobValidationReportFileValidationRowErrorXlsxError(
      rowNumber: (() { final guardedValue = map['rowNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sheet: (() { final guardedValue = map['sheet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
