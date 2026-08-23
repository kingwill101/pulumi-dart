// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the auto-rollout process.
class GoogleCloudDialogflowCxV3RolloutState {
  /// Start time of the current step.
  final pulumi.Input<String>? startTime;
  /// Display name of the current auto rollout step.
  final pulumi.Input<String>? step;
  /// Index of the current step in the auto rollout steps list.
  final pulumi.Input<int>? stepIndex;

  /// Creates a new [GoogleCloudDialogflowCxV3RolloutState].
  /// [startTime] Start time of the current step.
  /// [step] Display name of the current auto rollout step.
  /// [stepIndex] Index of the current step in the auto rollout steps list.
  const GoogleCloudDialogflowCxV3RolloutState({
    this.startTime,
    this.step,
    this.stepIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': ?startTime,
      'step': ?step,
      'stepIndex': ?stepIndex,
    };
  }

  factory GoogleCloudDialogflowCxV3RolloutState.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3RolloutState(
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      step: (() { final guardedValue = map['step']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stepIndex: (() { final guardedValue = map['stepIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
