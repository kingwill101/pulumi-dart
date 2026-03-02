// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_execution_status_latest_job.dart';

class TaskExecutionStatus {
  /// (Output)
  /// latest job execution.
  /// Structure is documented below.
  final pulumi.Input<List<TaskExecutionStatusLatestJob>>? latestJobs;
  /// (Output)
  /// Last update time of the status.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TaskExecutionStatus].
  /// [latestJobs] (Output)
  /// [updateTime] (Output)
  TaskExecutionStatus({
    this.latestJobs,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestJobs': ?pulumi.Input.mapOptionalInputValue<List<TaskExecutionStatusLatestJob>, List<Map<String, dynamic>>>(latestJobs, (value) => pulumi.Input.encodeList<TaskExecutionStatusLatestJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory TaskExecutionStatus.fromMap(Map<String, dynamic> map) {
    return TaskExecutionStatus(
      latestJobs: map['latestJobs'] == null ? null : (pulumi.Input.decodeList<TaskExecutionStatusLatestJob>(map['latestJobs'], (value) => TaskExecutionStatusLatestJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

