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
  const GoogleCloudIntegrationsV1alphaNextTask({
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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskConfigId: (() { final guardedValue = map['taskConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
