// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response_migrationcenter_v1alpha1.dart';
import 'import_row_error_response_migrationcenter_v1alpha1.dart';

/// A resource that aggregates the validation errors found in an import job file.
class FileValidationReportResponseMigrationcenterV1alpha1 {
  /// List of file level errors.
  final pulumi.Input<List<ImportErrorResponseMigrationcenterV1alpha1>> fileErrors;
  /// The name of the file.
  final pulumi.Input<String> fileName;
  /// Flag indicating that processing was aborted due to maximum number of errors.
  final pulumi.Input<bool> partialReport;
  /// Partial list of rows that encountered validation error.
  final pulumi.Input<List<ImportRowErrorResponseMigrationcenterV1alpha1>> rowErrors;

  /// Creates a new [FileValidationReportResponseMigrationcenterV1alpha1].
  /// [fileErrors] List of file level errors.
  /// [fileName] The name of the file.
  /// [partialReport] Flag indicating that processing was aborted due to maximum number of errors.
  /// [rowErrors] Partial list of rows that encountered validation error.
  FileValidationReportResponseMigrationcenterV1alpha1({
    required this.fileErrors,
    required this.fileName,
    required this.partialReport,
    required this.rowErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileErrors': pulumi.Input.mapInputValue<List<ImportErrorResponseMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(fileErrors, (value) => pulumi.Input.encodeList<ImportErrorResponseMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileName': fileName,
      'partialReport': partialReport,
      'rowErrors': pulumi.Input.mapInputValue<List<ImportRowErrorResponseMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(rowErrors, (value) => pulumi.Input.encodeList<ImportRowErrorResponseMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FileValidationReportResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return FileValidationReportResponseMigrationcenterV1alpha1(
      fileErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ImportErrorResponseMigrationcenterV1alpha1>(map['fileErrors']!, (value) => ImportErrorResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      fileName: pulumi.Input.fromValue(map['fileName'] as String),
      partialReport: pulumi.Input.fromValue(map['partialReport'] as bool),
      rowErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ImportRowErrorResponseMigrationcenterV1alpha1>(map['rowErrors']!, (value) => ImportRowErrorResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

