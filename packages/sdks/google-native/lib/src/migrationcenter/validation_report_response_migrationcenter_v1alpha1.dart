// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_validation_report_response_migrationcenter_v1alpha1.dart';
import 'import_error_response_migrationcenter_v1alpha1.dart';

/// A resource that aggregates errors across import job files.
class ValidationReportResponseMigrationcenterV1alpha1 {
  /// List of errors found in files.
  final pulumi.Input<List<FileValidationReportResponseMigrationcenterV1alpha1>>
  fileValidations;

  /// List of job level errors.
  final pulumi.Input<List<ImportErrorResponseMigrationcenterV1alpha1>>
  jobErrors;

  /// Creates a new [ValidationReportResponseMigrationcenterV1alpha1].
  /// [fileValidations] List of errors found in files.
  /// [jobErrors] List of job level errors.
  ValidationReportResponseMigrationcenterV1alpha1({
    required this.fileValidations,
    required this.jobErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileValidations':
          pulumi.Input.mapInputValue<
            List<FileValidationReportResponseMigrationcenterV1alpha1>,
            List<Map<String, dynamic>>
          >(
            fileValidations,
            (value) =>
                pulumi.Input.encodeList<
                  FileValidationReportResponseMigrationcenterV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'jobErrors':
          pulumi.Input.mapInputValue<
            List<ImportErrorResponseMigrationcenterV1alpha1>,
            List<Map<String, dynamic>>
          >(
            jobErrors,
            (value) =>
                pulumi.Input.encodeList<
                  ImportErrorResponseMigrationcenterV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ValidationReportResponseMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ValidationReportResponseMigrationcenterV1alpha1(
      fileValidations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          FileValidationReportResponseMigrationcenterV1alpha1
        >(
          map['fileValidations']!,
          (value) =>
              FileValidationReportResponseMigrationcenterV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      jobErrors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ImportErrorResponseMigrationcenterV1alpha1>(
          map['jobErrors']!,
          (value) => ImportErrorResponseMigrationcenterV1alpha1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
