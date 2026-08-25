// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_status_error.dart';
import 'job_status_error_result.dart';

class JobStatus {
  /// (Output)
  /// Final error result of the job. If present, indicates that the job has completed and was unsuccessful.
  /// Structure is documented below.
  final pulumi.Input<List<JobStatusErrorResult>?>? errorResults;
  /// (Output)
  /// The first errors encountered during the running of the job. The final message
  /// includes the number of errors that caused the process to stop. Errors here do
  /// not necessarily mean that the job has not completed or was unsuccessful.
  /// Structure is documented below.
  final pulumi.Input<List<JobStatusError>?>? errors;
  /// (Output)
  /// Running state of the job. Valid states include 'PENDING', 'RUNNING', and 'DONE'.
  final pulumi.Input<String?>? state;

  /// Creates a new [JobStatus].
  /// [errorResults] (Output)
  /// [errors] (Output)
  /// [state] (Output)
  const JobStatus({
    this.errorResults,
    this.errors,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorResults': ?pulumi.Input.mapOptionalInputValue<List<JobStatusErrorResult>, List<Map<String, dynamic>>>(errorResults, (value) => pulumi.Input.encodeList<JobStatusErrorResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<JobStatusError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<JobStatusError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory JobStatus.fromMap(Map<String, dynamic> map) {
    return JobStatus(
      errorResults: (() { final guardedValue = map['errorResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobStatusErrorResult>(guardedValue, (value) => JobStatusErrorResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobStatusError>(guardedValue, (value) => JobStatusError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
