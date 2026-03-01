// ignore_for_file: unused_element, unnecessary_cast


/// The task that is next in line to be executed, if the condition specified evaluated to true.
class GoogleCloudIntegrationsV1alphaNextTask {
  /// Standard filter expression for this task to become an eligible next task.
  final String? condition;
  /// User-provided description intended to give additional business context about the task.
  final String? description;
  /// User-provided label that is attached to this edge in the UI.
  final String? displayName;
  /// ID of the next task.
  final String? taskConfigId;
  /// Task number of the next task.
  final String? taskId;

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
      condition: map['condition'] == null ? null : map['condition'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      taskConfigId: map['taskConfigId'] == null ? null : map['taskConfigId'] as String,
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
    );
  }
}

