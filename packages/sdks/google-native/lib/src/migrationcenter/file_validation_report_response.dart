// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response.dart';
import 'import_row_error_response.dart';

/// A resource that aggregates the validation errors found in an import job file.
class FileValidationReportResponse {
  /// List of file level errors.
  final pulumi.Input<List<ImportErrorResponse>> fileErrors;
  /// The name of the file.
  final pulumi.Input<String> fileName;
  /// Flag indicating that processing was aborted due to maximum number of errors.
  final pulumi.Input<bool> partialReport;
  /// Partial list of rows that encountered validation error.
  final pulumi.Input<List<ImportRowErrorResponse>> rowErrors;

  /// Creates a new [FileValidationReportResponse].
  /// [fileErrors] List of file level errors.
  /// [fileName] The name of the file.
  /// [partialReport] Flag indicating that processing was aborted due to maximum number of errors.
  /// [rowErrors] Partial list of rows that encountered validation error.
  FileValidationReportResponse({
    required this.fileErrors,
    required this.fileName,
    required this.partialReport,
    required this.rowErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileErrors': pulumi.Input.mapInputValue<List<ImportErrorResponse>, List<Map<String, dynamic>>>(fileErrors, (value) => pulumi.Input.encodeList<ImportErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileName': fileName,
      'partialReport': partialReport,
      'rowErrors': pulumi.Input.mapInputValue<List<ImportRowErrorResponse>, List<Map<String, dynamic>>>(rowErrors, (value) => pulumi.Input.encodeList<ImportRowErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FileValidationReportResponse.fromMap(Map<String, dynamic> map) {
    return FileValidationReportResponse(
      fileErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ImportErrorResponse>(map['fileErrors']!, (value) => ImportErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      fileName: pulumi.Input.fromValue(map['fileName'] as String),
      partialReport: pulumi.Input.fromValue(map['partialReport'] as bool),
      rowErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ImportRowErrorResponse>(map['rowErrors']!, (value) => ImportRowErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

