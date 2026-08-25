// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportJobValidationReportFileValidationRowErrorCsvError {
  /// (Output)
  /// The row number where the error was detected.
  final pulumi.Input<int?>? rowNumber;

  /// Creates a new [ImportJobValidationReportFileValidationRowErrorCsvError].
  /// [rowNumber] (Output)
  const ImportJobValidationReportFileValidationRowErrorCsvError({
    this.rowNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rowNumber': ?rowNumber,
    };
  }

  factory ImportJobValidationReportFileValidationRowErrorCsvError.fromMap(Map<String, dynamic> map) {
    return ImportJobValidationReportFileValidationRowErrorCsvError(
      rowNumber: (() { final guardedValue = map['rowNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
