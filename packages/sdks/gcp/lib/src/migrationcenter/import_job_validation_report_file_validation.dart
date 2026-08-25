// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_validation_report_file_validation_file_error.dart';
import 'import_job_validation_report_file_validation_row_error.dart';

class ImportJobValidationReportFileValidation {
  /// (Output)
  /// List of file level errors.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobValidationReportFileValidationFileError>?>? fileErrors;
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
  final pulumi.Input<List<ImportJobValidationReportFileValidationRowError>?>? rowErrors;

  /// Creates a new [ImportJobValidationReportFileValidation].
  /// [fileErrors] (Output)
  /// [fileName] (Output)
  /// [partialReport] (Output)
  /// [rowErrors] (Output)
  const ImportJobValidationReportFileValidation({
    this.fileErrors,
    this.fileName,
    this.partialReport,
    this.rowErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobValidationReportFileValidationFileError>, List<Map<String, dynamic>>>(fileErrors, (value) => pulumi.Input.encodeList<ImportJobValidationReportFileValidationFileError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileName': ?fileName,
      'partialReport': ?partialReport,
      'rowErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobValidationReportFileValidationRowError>, List<Map<String, dynamic>>>(rowErrors, (value) => pulumi.Input.encodeList<ImportJobValidationReportFileValidationRowError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImportJobValidationReportFileValidation.fromMap(Map<String, dynamic> map) {
    return ImportJobValidationReportFileValidation(
      fileErrors: (() { final guardedValue = map['fileErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobValidationReportFileValidationFileError>(guardedValue, (value) => ImportJobValidationReportFileValidationFileError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partialReport: (() { final guardedValue = map['partialReport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rowErrors: (() { final guardedValue = map['rowErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobValidationReportFileValidationRowError>(guardedValue, (value) => ImportJobValidationReportFileValidationRowError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
