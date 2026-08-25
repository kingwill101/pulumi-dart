// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_execution_report_execution_error_file_validation.dart';
import 'import_job_execution_report_execution_error_job_error.dart';

class ImportJobExecutionReportExecutionError {
  /// (Output)
  /// List of errors found in files.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidation>?>? fileValidations;
  /// (Output)
  /// List of job level errors.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorJobError>?>? jobErrors;

  /// Creates a new [ImportJobExecutionReportExecutionError].
  /// [fileValidations] (Output)
  /// [jobErrors] (Output)
  const ImportJobExecutionReportExecutionError({
    this.fileValidations,
    this.jobErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileValidations': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidation>, List<Map<String, dynamic>>>(fileValidations, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorJobError>, List<Map<String, dynamic>>>(jobErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorJobError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImportJobExecutionReportExecutionError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionError(
      fileValidations: (() { final guardedValue = map['fileValidations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidation>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jobErrors: (() { final guardedValue = map['jobErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorJobError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorJobError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
