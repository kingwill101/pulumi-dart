// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_validation_report_response.dart';
import 'import_error_response.dart';

/// A resource that aggregates errors across import job files.
class ValidationReportResponse {
  /// List of errors found in files.
  final pulumi.Input<List<FileValidationReportResponse>> fileValidations;
  /// List of job level errors.
  final pulumi.Input<List<ImportErrorResponse>> jobErrors;

  /// Creates a new [ValidationReportResponse].
  /// [fileValidations] List of errors found in files.
  /// [jobErrors] List of job level errors.
  ValidationReportResponse({
    required this.fileValidations,
    required this.jobErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileValidations': pulumi.Input.mapInputValue<List<FileValidationReportResponse>, List<Map<String, dynamic>>>(fileValidations, (value) => pulumi.Input.encodeList<FileValidationReportResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobErrors': pulumi.Input.mapInputValue<List<ImportErrorResponse>, List<Map<String, dynamic>>>(jobErrors, (value) => pulumi.Input.encodeList<ImportErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidationReportResponse.fromMap(Map<String, dynamic> map) {
    return ValidationReportResponse(
      fileValidations: (pulumi.Input.decodeList<FileValidationReportResponse>(map['fileValidations'], (value) => FileValidationReportResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      jobErrors: (pulumi.Input.decodeList<ImportErrorResponse>(map['jobErrors'], (value) => ImportErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

