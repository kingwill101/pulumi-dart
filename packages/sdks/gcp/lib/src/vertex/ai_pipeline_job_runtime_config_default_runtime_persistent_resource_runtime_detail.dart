// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail {
  /// (Optional, Beta)
  /// PersistentResource name, format: `projects/{project}/locations/{location}/persistentResources/{persistent_resource}`.
  final pulumi.Input<String?>? persistentResourceName;
  /// (Optional, Beta)
  /// Sets the behavior when a task has reached the defined wait duration while waiting for task resources to become available in the specified persistent resource.
  /// Possible values are: `TASK_RESOURCE_UNAVAILABLE_TIMEOUT_BEHAVIOR_UNSPECIFIED`, `FAIL`, `FALL_BACK_TO_ON_DEMAND`.
  final pulumi.Input<String?>? taskResourceUnavailableTimeoutBehavior;
  /// (Optional, Beta)
  /// The maxWaitTime for the task if the persistent resource is unavailable.
  final pulumi.Input<String?>? taskResourceUnavailableWaitTimeMs;

  /// Creates a new [AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail].
  /// [persistentResourceName] (Optional, Beta)
  /// [taskResourceUnavailableTimeoutBehavior] (Optional, Beta)
  /// [taskResourceUnavailableWaitTimeMs] (Optional, Beta)
  const AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail({
    this.persistentResourceName,
    this.taskResourceUnavailableTimeoutBehavior,
    this.taskResourceUnavailableWaitTimeMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistentResourceName': ?persistentResourceName,
      'taskResourceUnavailableTimeoutBehavior': ?taskResourceUnavailableTimeoutBehavior,
      'taskResourceUnavailableWaitTimeMs': ?taskResourceUnavailableWaitTimeMs,
    };
  }

  factory AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobRuntimeConfigDefaultRuntimePersistentResourceRuntimeDetail(
      persistentResourceName: (() { final guardedValue = map['persistentResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskResourceUnavailableTimeoutBehavior: (() { final guardedValue = map['taskResourceUnavailableTimeoutBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskResourceUnavailableWaitTimeMs: (() { final guardedValue = map['taskResourceUnavailableWaitTimeMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
