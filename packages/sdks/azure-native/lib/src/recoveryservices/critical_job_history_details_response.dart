// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Critical past job details of the migration item.
class CriticalJobHistoryDetailsResponse {
  /// The ARM Id of the job being executed.
  final pulumi.Input<String> jobId;
  /// The job name.
  final pulumi.Input<String> jobName;
  /// The job state.
  final pulumi.Input<String> jobStatus;
  /// The start time of the job.
  final pulumi.Input<String> startTime;

  /// Creates a new [CriticalJobHistoryDetailsResponse].
  /// [jobId] The ARM Id of the job being executed.
  /// [jobName] The job name.
  /// [jobStatus] The job state.
  /// [startTime] The start time of the job.
  const CriticalJobHistoryDetailsResponse({
    required this.jobId,
    required this.jobName,
    required this.jobStatus,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'jobName': jobName,
      'jobStatus': jobStatus,
      'startTime': startTime,
    };
  }

  factory CriticalJobHistoryDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CriticalJobHistoryDetailsResponse(
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      jobStatus: pulumi.Input.fromValue(map['jobStatus'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
