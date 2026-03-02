// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container.dart';
import 'volume.dart';

/// TaskSpec is a description of a task.
class TaskSpec {
  /// Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.
  final pulumi.Input<List<Container>>? containers;
  /// Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  final pulumi.Input<int>? maxRetries;
  /// Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final pulumi.Input<String>? serviceAccountName;
  /// Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final pulumi.Input<String>? timeoutSeconds;
  /// Optional. List of volumes that can be mounted by containers belonging to the task.
  final pulumi.Input<List<Volume>>? volumes;

  /// Creates a new [TaskSpec].
  /// [containers] Optional. List of containers belonging to the task. We disallow a number of fields on this Container. Only a single container may be provided.
  /// [maxRetries] Optional. Number of retries allowed per task, before marking this job failed. Defaults to 3.
  /// [serviceAccountName] Optional. Email address of the IAM service account associated with the task of a job execution. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  /// [timeoutSeconds] Optional. Duration in seconds the task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  /// [volumes] Optional. List of volumes that can be mounted by containers belonging to the task.
  TaskSpec({
    this.containers,
    this.maxRetries,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxRetries': ?maxRetries,
      'serviceAccountName': ?serviceAccountName,
      'timeoutSeconds': ?timeoutSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TaskSpec.fromMap(Map<String, dynamic> map) {
    return TaskSpec(
      containers: map['containers'] == null ? null : (pulumi.Input.decodeList<Container>(map['containers'], (value) => Container.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxRetries: map['maxRetries'] == null ? null : (map['maxRetries'] as int).input(),
      serviceAccountName: map['serviceAccountName'] == null ? null : (map['serviceAccountName'] as String).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds'] as String).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<Volume>(map['volumes'], (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

