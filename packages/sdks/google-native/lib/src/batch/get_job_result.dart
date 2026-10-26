// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_policy_response.dart';
import 'job_notification_response.dart';
import 'job_status_response.dart';
import 'logs_policy_response.dart';
import 'task_group_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// Compute resource allocation for all TaskGroups in the Job.
  final AllocationPolicyResponse? allocationPolicy;
  /// When the Job was created.
  final String? createTime;
  /// Labels for the Job. Labels could be user provided or system generated. For example, "labels": { "department": "finance", "environment": "test" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  final Map<String, String>? labels;
  /// Log preservation policy for the Job.
  final LogsPolicyResponse? logsPolicy;
  /// Job name. For example: "projects/123456/locations/us-central1/jobs/job01".
  final String? name;
  /// Notification configurations.
  final List<JobNotificationResponse>? notifications;
  /// Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicates higher priority. A job with higher priority value is more likely to run earlier if all other requirements are satisfied.
  final String? priority;
  /// Job status. It is read only for users.
  final JobStatusResponse? status;
  /// TaskGroups in the Job. Only one TaskGroup is supported now.
  final List<TaskGroupResponse>? taskGroups;
  /// A system generated unique ID (in UUID4 format) for the Job.
  final String? uid;
  /// The last time the Job was updated.
  final String? updateTime;

  /// Creates a new [GetJobResult].
  /// [allocationPolicy] Compute resource allocation for all TaskGroups in the Job.
  /// [createTime] When the Job was created.
  /// [labels] Labels for the Job. Labels could be user provided or system generated. For example, "labels": { "department": "finance", "environment": "test" } You can assign up to 64 labels. [Google Compute Engine label restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) apply. Label names that start with "goog-" or "google-" are reserved.
  /// [logsPolicy] Log preservation policy for the Job.
  /// [name] Job name. For example: "projects/123456/locations/us-central1/jobs/job01".
  /// [notifications] Notification configurations.
  /// [priority] Priority of the Job. The valid value range is [0, 100). Default value is 0. Higher value indicates higher priority. A job with higher priority value is more likely to run earlier if all other requirements are satisfied.
  /// [status] Job status. It is read only for users.
  /// [taskGroups] TaskGroups in the Job. Only one TaskGroup is supported now.
  /// [uid] A system generated unique ID (in UUID4 format) for the Job.
  /// [updateTime] The last time the Job was updated.
  const GetJobResult({
    this.allocationPolicy,
    this.createTime,
    this.labels,
    this.logsPolicy,
    this.name,
    this.notifications,
    this.priority,
    this.status,
    this.taskGroups,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy?.toMap(),
      'createTime': ?createTime,
      'labels': ?labels,
      'logsPolicy': ?logsPolicy?.toMap(),
      'name': ?name,
      'notifications': ?(() { final guardedValue = notifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<JobNotificationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'priority': ?priority,
      'status': ?status?.toMap(),
      'taskGroups': ?(() { final guardedValue = taskGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<TaskGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      allocationPolicy: (() { final guardedValue = map['allocationPolicy']; if (guardedValue == null) return null; return AllocationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      logsPolicy: (() { final guardedValue = map['logsPolicy']; if (guardedValue == null) return null; return LogsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobNotificationResponse>(guardedValue, (value) => JobNotificationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return JobStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      taskGroups: (() { final guardedValue = map['taskGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TaskGroupResponse>(guardedValue, (value) => TaskGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
