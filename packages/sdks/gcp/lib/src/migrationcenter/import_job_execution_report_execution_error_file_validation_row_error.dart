// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_execution_report_execution_error_file_validation_row_error_archive_error.dart';
import 'import_job_execution_report_execution_error_file_validation_row_error_csv_error.dart';
import 'import_job_execution_report_execution_error_file_validation_row_error_error.dart';
import 'import_job_execution_report_execution_error_file_validation_row_error_xlsx_error.dart';

class ImportJobExecutionReportExecutionErrorFileValidationRowError {
  /// (Output)
  /// Error details for an archive file.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError>>? archiveErrors;
  /// (Output)
  /// The asset title.
  final pulumi.Input<String>? assetTitle;
  /// (Output)
  /// Error details for a CSV file.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError>>? csvErrors;
  /// (Output)
  /// The list of errors detected in the row.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorError>>? errors;
  /// (Output)
  /// The row number where the error was detected.
  final pulumi.Input<int>? rowNumber;
  /// (Output)
  /// The name of the VM in the row.
  final pulumi.Input<String>? vmName;
  /// (Output)
  /// The VM UUID.
  final pulumi.Input<String>? vmUuid;
  /// (Output)
  /// Error details for an XLSX file.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError>>? xlsxErrors;

  /// Creates a new [ImportJobExecutionReportExecutionErrorFileValidationRowError].
  /// [archiveErrors] (Output)
  /// [assetTitle] (Output)
  /// [csvErrors] (Output)
  /// [errors] (Output)
  /// [rowNumber] (Output)
  /// [vmName] (Output)
  /// [vmUuid] (Output)
  /// [xlsxErrors] (Output)
  const ImportJobExecutionReportExecutionErrorFileValidationRowError({
    this.archiveErrors,
    this.assetTitle,
    this.csvErrors,
    this.errors,
    this.rowNumber,
    this.vmName,
    this.vmUuid,
    this.xlsxErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError>, List<Map<String, dynamic>>>(archiveErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assetTitle': ?assetTitle,
      'csvErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError>, List<Map<String, dynamic>>>(csvErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowNumber': ?rowNumber,
      'vmName': ?vmName,
      'vmUuid': ?vmUuid,
      'xlsxErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError>, List<Map<String, dynamic>>>(xlsxErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImportJobExecutionReportExecutionErrorFileValidationRowError.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReportExecutionErrorFileValidationRowError(
      archiveErrors: (() { final guardedValue = map['archiveErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidationRowErrorArchiveError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      assetTitle: (() { final guardedValue = map['assetTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      csvErrors: (() { final guardedValue = map['csvErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidationRowErrorCsvError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidationRowErrorError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rowNumber: (() { final guardedValue = map['rowNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vmName: (() { final guardedValue = map['vmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmUuid: (() { final guardedValue = map['vmUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xlsxErrors: (() { final guardedValue = map['xlsxErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError>(guardedValue, (value) => ImportJobExecutionReportExecutionErrorFileValidationRowErrorXlsxError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
