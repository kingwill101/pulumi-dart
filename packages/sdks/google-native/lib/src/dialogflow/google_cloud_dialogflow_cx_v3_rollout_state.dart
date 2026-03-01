// ignore_for_file: unused_element, unnecessary_cast


/// State of the auto-rollout process.
class GoogleCloudDialogflowCxV3RolloutState {
  /// Start time of the current step.
  final String? startTime;
  /// Display name of the current auto rollout step.
  final String? step;
  /// Index of the current step in the auto rollout steps list.
  final int? stepIndex;

  /// Creates a new [GoogleCloudDialogflowCxV3RolloutState].
  /// [startTime] Start time of the current step.
  /// [step] Display name of the current auto rollout step.
  /// [stepIndex] Index of the current step in the auto rollout steps list.
  GoogleCloudDialogflowCxV3RolloutState({
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
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      step: map['step'] == null ? null : map['step'] as String,
      stepIndex: map['stepIndex'] == null ? null : map['stepIndex'] as int,
    );
  }
}

