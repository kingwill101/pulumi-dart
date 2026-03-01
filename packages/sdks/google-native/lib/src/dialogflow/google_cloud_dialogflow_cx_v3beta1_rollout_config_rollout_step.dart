// ignore_for_file: unused_element, unnecessary_cast


/// A single rollout step with specified traffic allocation.
class GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep {
  /// The name of the rollout step;
  final String? displayName;
  /// The minimum time that this step should last. Should be longer than 1 hour. If not set, the default minimum duration for each step will be 1 hour.
  final String? minDuration;
  /// The percentage of traffic allocated to the flow version of this rollout step. (0%, 100%].
  final int? trafficPercent;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep].
  /// [displayName] The name of the rollout step;
  /// [minDuration] The minimum time that this step should last. Should be longer than 1 hour. If not set, the default minimum duration for each step will be 1 hour.
  /// [trafficPercent] The percentage of traffic allocated to the flow version of this rollout step. (0%, 100%].
  GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep({
    this.displayName,
    this.minDuration,
    this.trafficPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'minDuration': ?minDuration,
      'trafficPercent': ?trafficPercent,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      minDuration: map['minDuration'] == null ? null : map['minDuration'] as String,
      trafficPercent: map['trafficPercent'] == null ? null : map['trafficPercent'] as int,
    );
  }
}

