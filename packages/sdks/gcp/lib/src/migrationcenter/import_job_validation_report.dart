// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_validation_report_file_validation.dart';
import 'import_job_validation_report_job_error.dart';

class ImportJobValidationReport {
  /// (Output)
  /// List of errors found in files.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobValidationReportFileValidation>>? fileValidations;
  /// (Output)
  /// List of job level errors.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobValidationReportJobError>>? jobErrors;

  /// Creates a new [ImportJobValidationReport].
  /// [fileValidations] (Output)
  /// [jobErrors] (Output)
  const ImportJobValidationReport({
    this.fileValidations,
    this.jobErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileValidations': ?pulumi.Input.mapOptionalInputValue<List<ImportJobValidationReportFileValidation>, List<Map<String, dynamic>>>(fileValidations, (value) => pulumi.Input.encodeList<ImportJobValidationReportFileValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobValidationReportJobError>, List<Map<String, dynamic>>>(jobErrors, (value) => pulumi.Input.encodeList<ImportJobValidationReportJobError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImportJobValidationReport.fromMap(Map<String, dynamic> map) {
    return ImportJobValidationReport(
      fileValidations: (() { final guardedValue = map['fileValidations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobValidationReportFileValidation>(guardedValue, (value) => ImportJobValidationReportFileValidation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jobErrors: (() { final guardedValue = map['jobErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobValidationReportJobError>(guardedValue, (value) => ImportJobValidationReportJobError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
