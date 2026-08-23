// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_execution_report_execution_error_file_validation_row_error_archive_error_csv_error.dart';

class ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError {
  /// (Output)
  /// Error details for a CSV file.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError>>? csvErrors;
  /// (Output)
  /// The file path inside the archive where the error was detected.
  final pulumi.Input<String>? filePath;

  /// Creates a new [ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError].
  /// [csvErrors] (Output)
  /// [filePath] (Output)
  const ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError({
    this.csvErrors,
    this.filePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError>, List<Map<String, dynamic>>>(csvErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filePath': ?filePath,
    };
  }

  factory ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError(
      csvErrors: (() { final guardedValue = map['csvErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveErrorCsvError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
