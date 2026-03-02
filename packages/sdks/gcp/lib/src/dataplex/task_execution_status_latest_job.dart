// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskExecutionStatusLatestJob {
  /// (Output)
  /// The time when the job ended.
  final pulumi.Input<String>? endTime;
  /// (Output)
  /// Additional information about the current state.
  final pulumi.Input<String>? message;
  /// (Output)
  /// The relative resource name of the job, of the form: projects/{project_number}/locations/{locationId}/lakes/{lakeId}/tasks/{taskId}/jobs/{jobId}.
  final pulumi.Input<String>? name;
  /// (Output)
  /// The number of times the job has been retried (excluding the initial attempt).
  final pulumi.Input<int>? retryCount;
  /// (Output)
  /// The underlying service running a job.
  final pulumi.Input<String>? service;
  /// (Output)
  /// The full resource name for the job run under a particular service.
  final pulumi.Input<String>? serviceJob;
  /// (Output)
  /// The time when the job was started.
  final pulumi.Input<String>? startTime;
  /// (Output)
  /// Execution state for the job.
  final pulumi.Input<String>? state;
  /// (Output)
  /// System generated globally unique ID for the job.
  final pulumi.Input<String>? uid;

  /// Creates a new [TaskExecutionStatusLatestJob].
  /// [endTime] (Output)
  /// [message] (Output)
  /// [name] (Output)
  /// [retryCount] (Output)
  /// [service] (Output)
  /// [serviceJob] (Output)
  /// [startTime] (Output)
  /// [state] (Output)
  /// [uid] (Output)
  TaskExecutionStatusLatestJob({
    this.endTime,
    this.message,
    this.name,
    this.retryCount,
    this.service,
    this.serviceJob,
    this.startTime,
    this.state,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'message': ?message,
      'name': ?name,
      'retryCount': ?retryCount,
      'service': ?service,
      'serviceJob': ?serviceJob,
      'startTime': ?startTime,
      'state': ?state,
      'uid': ?uid,
    };
  }

  factory TaskExecutionStatusLatestJob.fromMap(Map<String, dynamic> map) {
    return TaskExecutionStatusLatestJob(
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      retryCount: map['retryCount'] == null ? null : (map['retryCount']! as int).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
      serviceJob: map['serviceJob'] == null ? null : (map['serviceJob']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
    );
  }
}

