// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the auto-rollout process.
class GoogleCloudDialogflowCxV3beta1RolloutState {
  /// Start time of the current step.
  final pulumi.Input<String>? startTime;
  /// Display name of the current auto rollout step.
  final pulumi.Input<String>? step;
  /// Index of the current step in the auto rollout steps list.
  final pulumi.Input<int>? stepIndex;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1RolloutState].
  /// [startTime] Start time of the current step.
  /// [step] Display name of the current auto rollout step.
  /// [stepIndex] Index of the current step in the auto rollout steps list.
  GoogleCloudDialogflowCxV3beta1RolloutState({
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

  factory GoogleCloudDialogflowCxV3beta1RolloutState.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1RolloutState(
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      step: map['step'] == null ? null : (map['step']! as String).input(),
      stepIndex: map['stepIndex'] == null ? null : (map['stepIndex']! as int).input(),
    );
  }
}

