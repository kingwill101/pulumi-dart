// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_execution_report_execution_error.dart';

class ImportJobExecutionReport {
  /// (Output)
  /// A resource that aggregates errors across import job files.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReportExecutionError>>? executionErrors;
  /// (Output)
  /// Total number of asset frames reported for the import job.
  final pulumi.Input<int>? framesReported;
  /// (Output)
  /// Total number of rows in the import job.
  final pulumi.Input<int>? totalRowsCount;

  /// Creates a new [ImportJobExecutionReport].
  /// [executionErrors] (Output)
  /// [framesReported] (Output)
  /// [totalRowsCount] (Output)
  const ImportJobExecutionReport({
    this.executionErrors,
    this.framesReported,
    this.totalRowsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionErrors': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReportExecutionError>, List<Map<String, dynamic>>>(executionErrors, (value) => pulumi.Input.encodeList<ImportJobExecutionReportExecutionError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'framesReported': ?framesReported,
      'totalRowsCount': ?totalRowsCount,
    };
  }

  factory ImportJobExecutionReport.fromMap(Map<String, dynamic> map) {
    return ImportJobExecutionReport(
      executionErrors: (() { final guardedValue = map['executionErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReportExecutionError>(guardedValue, (value) => ImportJobExecutionReportExecutionError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      framesReported: (() { final guardedValue = map['framesReported']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalRowsCount: (() { final guardedValue = map['totalRowsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
