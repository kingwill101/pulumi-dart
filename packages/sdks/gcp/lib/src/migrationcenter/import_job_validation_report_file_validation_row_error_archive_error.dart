// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_validation_report_file_validation_row_error_archive_error_csv_error.dart';

class ImportJobValidationReportFileValidationRowErrorArchiveError {
  /// (Output)
  /// Error details for a CSV file.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobValidationReportFileValidationRowErrorArchiveErrorCsvError>?>? csvErrors;
  /// (Output)
  /// The file path inside the archive where the error was detected.
  final pulumi.Input<String?>? filePath;

  /// Creates a new [ImportJobValidationReportFileValidationRowErrorArchiveError].
  /// [csvErrors] (Output)
  /// [filePath] (Output)
  const ImportJobValidationReportFileValidationRowErrorArchiveError({
    this.csvErrors,
    this.filePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobValidationReportFileValidationRowErrorArchiveErrorCsvError>, List<Map<String, dynamic>>>(csvErrors, (value) => pulumi.Input.encodeList<ImportJobValidationReportFileValidationRowErrorArchiveErrorCsvError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filePath': ?filePath,
    };
  }

  factory ImportJobValidationReportFileValidationRowErrorArchiveError.fromMap(Map<String, dynamic> map) {
    return ImportJobValidationReportFileValidationRowErrorArchiveError(
      csvErrors: (() { final guardedValue = map['csvErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobValidationReportFileValidationRowErrorArchiveErrorCsvError>(guardedValue, (value) => ImportJobValidationReportFileValidationRowErrorArchiveErrorCsvError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
