// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Current job details of the migration item.
class CurrentJobDetailsResponse {
  /// The ARM Id of the job being executed.
  final pulumi.Input<String> jobId;
  /// The job name.
  final pulumi.Input<String> jobName;
  /// The start time of the job.
  final pulumi.Input<String> startTime;

  /// Creates a new [CurrentJobDetailsResponse].
  /// [jobId] The ARM Id of the job being executed.
  /// [jobName] The job name.
  /// [startTime] The start time of the job.
  const CurrentJobDetailsResponse({
    required this.jobId,
    required this.jobName,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'jobName': jobName,
      'startTime': startTime,
    };
  }

  factory CurrentJobDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CurrentJobDetailsResponse(
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
