// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_execution_report_execution_error_file_validation_file_error.dart';
import 'import_job_execution_report_execution_error_file_validation_row_error.dart';

class ImportJobExecutionReportExecutionErrorFileValidation {
  /// (Output)
  /// List of file level errors.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidationFileError>?>? fileErrors;
  /// (Output)
  /// The name of the file.
  final pulumi.Input<String?>? fileName;
  /// (Output)
  /// Flag indicating that processing was aborted due to maximum number of
  /// errors.
  final pulumi.Input<bool?>? partialReport;
  /// (Output)
  /// Partial list of rows that encountered validation error.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidationRowError>?>? rowErrors;

  /// Creates a new [ImportJobExecutionReportExecutionErrorFileValidation].
  /// [fileErrors] (Output)
  /// [fileName] (Output)
  /// [partialReport] (Output)
  /// [rowErrors] (Output)
  const ImportJobExecutionReportExecutionErrorFileValidation({
    this.fileErrors,
    this.fileName,
    this.partialReport,
    this.rowErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidationFileError>, List<Map<String, dynamic>>>(fileErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidationFileError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileName': ?fileName,
      'partialReport': ?partialReport,
      'rowErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidationRowError>, List<Map<String, dynamic>>>(rowErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidationRowError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImportJobExecutionReportExecutionErrorFileValidation.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorFileValidation(
      fileErrors: (() { final guardedValue = map['fileErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidationFileError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidationFileError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partialReport: (() { final guardedValue = map['partialReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rowErrors: (() { final guardedValue = map['rowErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidationRowError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidationRowError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
