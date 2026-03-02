// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the auto-rollout process.
class GoogleCloudDialogflowCxV3beta1RolloutStateResponse {
  /// Start time of the current step.
  final pulumi.Input<String> startTime;
  /// Display name of the current auto rollout step.
  final pulumi.Input<String> step;
  /// Index of the current step in the auto rollout steps list.
  final pulumi.Input<int> stepIndex;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1RolloutStateResponse].
  /// [startTime] Start time of the current step.
  /// [step] Display name of the current auto rollout step.
  /// [stepIndex] Index of the current step in the auto rollout steps list.
  GoogleCloudDialogflowCxV3beta1RolloutStateResponse({
    required this.startTime,
    required this.step,
    required this.stepIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': startTime,
      'step': step,
      'stepIndex': stepIndex,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1RolloutStateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1RolloutStateResponse(
      startTime: (map['startTime'] as String).input(),
      step: (map['step'] as String).input(),
      stepIndex: (map['stepIndex'] as int).input(),
    );
  }
}

