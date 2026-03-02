// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The task that is next in line to be executed, if the condition specified evaluated to true.
class GoogleCloudIntegrationsV1alphaNextTask {
  /// Standard filter expression for this task to become an eligible next task.
  final pulumi.Input<String>? condition;
  /// User-provided description intended to give additional business context about the task.
  final pulumi.Input<String>? description;
  /// User-provided label that is attached to this edge in the UI.
  final pulumi.Input<String>? displayName;
  /// ID of the next task.
  final pulumi.Input<String>? taskConfigId;
  /// Task number of the next task.
  final pulumi.Input<String>? taskId;

  /// Creates a new [GoogleCloudIntegrationsV1alphaNextTask].
  /// [condition] Standard filter expression for this task to become an eligible next task.
  /// [description] User-provided description intended to give additional business context about the task.
  /// [displayName] User-provided label that is attached to this edge in the UI.
  /// [taskConfigId] ID of the next task.
  /// [taskId] Task number of the next task.
  GoogleCloudIntegrationsV1alphaNextTask({
    this.condition,
    this.description,
    this.displayName,
    this.taskConfigId,
    this.taskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'description': ?description,
      'displayName': ?displayName,
      'taskConfigId': ?taskConfigId,
      'taskId': ?taskId,
    };
  }

  factory GoogleCloudIntegrationsV1alphaNextTask.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaNextTask(
      condition: map['condition'] == null ? null : (map['condition']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      taskConfigId: map['taskConfigId'] == null ? null : (map['taskConfigId']! as String).input(),
      taskId: map['taskId'] == null ? null : (map['taskId']! as String).input(),
    );
  }
}

