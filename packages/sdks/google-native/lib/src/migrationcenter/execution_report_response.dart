// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_report_response.dart';

/// A resource that reports result of the import job execution.
class ExecutionReportResponse {
  /// Validation errors encountered during the execution of the import job.
  final pulumi.Input<ValidationReportResponse> executionErrors;

  /// Total number of asset frames reported for the import job.
  final pulumi.Input<int> framesReported;

  /// Total number of rows in the import job.
  final pulumi.Input<int> totalRowsCount;

  /// Creates a new [ExecutionReportResponse].
  /// [executionErrors] Validation errors encountered during the execution of the import job.
  /// [framesReported] Total number of asset frames reported for the import job.
  /// [totalRowsCount] Total number of rows in the import job.
  ExecutionReportResponse({
    required this.executionErrors,
    required this.framesReported,
    required this.totalRowsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionErrors':
          pulumi.Input.mapInputValue<
            ValidationReportResponse,
            Map<String, dynamic>
          >(executionErrors, (value) => value.toMap()),
      'framesReported': framesReported,
      'totalRowsCount': totalRowsCount,
    };
  }

  factory ExecutionReportResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionReportResponse(
      executionErrors: pulumi.Input.fromValue(
        ValidationReportResponse.fromMap(
          (map['executionErrors']! as Map).cast<String, dynamic>(),
        ),
      ),
      framesReported: pulumi.Input.fromValue(map['framesReported'] as int),
      totalRowsCount: pulumi.Input.fromValue(map['totalRowsCount'] as int),
    );
  }
}
