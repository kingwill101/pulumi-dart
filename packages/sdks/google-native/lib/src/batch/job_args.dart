// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_policy.dart';
import 'job_notification.dart';
import 'logs_policy.dart';
import 'task_group.dart';

/// {@template pulumi_batch_v1_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_batch_v1_job_args_doc}
class JobArgs {
  /// Compute resource allocation for all TaskGroups in the Job.
  final pulumi.Input<AllocationPolicy>? allocationPolicy;
  /// ID used to uniquely identify the Job within its parent scope. This field should contain at most 63 characters and must start with lowercase characters. Only lowercase characters, numbers and '-' are accepted. The '-' character cannot be the first or the last one. A system generated ID will be used if the field is not set. The job.name field in the request will be ignored and the created resource name of the Job will be "{parent}/jobs/{job_id}".
  final pulumi.Input<String>? jobId;
  /// Labels for the Job. Labels could be user provided or system generated. For example, "labels": { "department": "finance", "environment": "test" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Log preservation policy for the Job.
  final pulumi.Input<LogsPolicy>? logsPolicy;
  /// Notification configurations.
  final pulumi.Input<List<JobNotification>>? notifications;
  /// Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicates higher priority. A job with higher priority value is more likely to run earlier if all other requirements are satisfied.
  final pulumi.Input<String>? priority;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// TaskGroups in the Job. Only one TaskGroup is supported now.
  final pulumi.Input<List<TaskGroup>> taskGroups;

  /// Creates a new [JobArgs].
  /// [allocationPolicy] Compute resource allocation for all TaskGroups in the Job.
  /// [jobId] ID used to uniquely identify the Job within its parent scope. This field should contain at most 63 characters and must start with lowercase characters. Only lowercase characters, numbers and '-' are accepted. The '-' character cannot be the first or the last one. A system generated ID will be used if the field is not set. The job.name field in the request will be ignored and the created resource name of the Job will be "{parent}/jobs/{job_id}".
  /// [labels] Labels for the Job. Labels could be user provided or system generated. For example, "labels": { "department": "finance", "environment": "test" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  /// [location] Optional.
  /// [logsPolicy] Log preservation policy for the Job.
  /// [notifications] Notification configurations.
  /// [priority] Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicates higher priority. A job with higher priority value is more likely to run earlier if all other requirements are satisfied.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [taskGroups] TaskGroups in the Job. Only one TaskGroup is supported now.
  JobArgs({
    this.allocationPolicy,
    this.jobId,
    this.labels,
    this.location,
    this.logsPolicy,
    this.notifications,
    this.priority,
    this.project,
    this.requestId,
    required this.taskGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?pulumi.Input.mapOptionalInputValue<AllocationPolicy, Map<String, dynamic>>(allocationPolicy, (value) => value.toMap()),
      'jobId': ?jobId,
      'labels': ?labels,
      'location': ?location,
      'logsPolicy': ?pulumi.Input.mapOptionalInputValue<LogsPolicy, Map<String, dynamic>>(logsPolicy, (value) => value.toMap()),
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<JobNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<JobNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
      'project': ?project,
      'requestId': ?requestId,
      'taskGroups': pulumi.Input.mapInputValue<List<TaskGroup>, List<Map<String, dynamic>>>(taskGroups, (value) => pulumi.Input.encodeList<TaskGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      allocationPolicy: (() { final guardedValue = map['allocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllocationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logsPolicy: (() { final guardedValue = map['logsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobNotification>(guardedValue, (value) => JobNotification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<TaskGroup>(map['taskGroups']!, (value) => TaskGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

