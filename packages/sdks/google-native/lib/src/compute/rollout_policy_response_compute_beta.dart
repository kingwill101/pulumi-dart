// ignore_for_file: unused_element, unnecessary_cast


/// A rollout policy configuration.
class RolloutPolicyResponseComputeBeta {
  /// An optional RFC3339 timestamp on or after which the update is considered rolled out to any zone that is not explicitly stated.
  final String defaultRolloutTime;
  /// Location based rollout policies to apply to the resource. Currently only zone names are supported and must be represented as valid URLs, like: zones/us-central1-a. The value expects an RFC3339 timestamp on or after which the update is considered rolled out to the specified location.
  final Map<String, String> locationRolloutPolicies;

  /// Creates a new [RolloutPolicyResponseComputeBeta].
  /// [defaultRolloutTime] An optional RFC3339 timestamp on or after which the update is considered rolled out to any zone that is not explicitly stated.
  /// [locationRolloutPolicies] Location based rollout policies to apply to the resource. Currently only zone names are supported and must be represented as valid URLs, like: zones/us-central1-a. The value expects an RFC3339 timestamp on or after which the update is considered rolled out to the specified location.
  RolloutPolicyResponseComputeBeta({
    required this.defaultRolloutTime,
    required this.locationRolloutPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRolloutTime': defaultRolloutTime,
      'locationRolloutPolicies': locationRolloutPolicies,
    };
  }

  factory RolloutPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RolloutPolicyResponseComputeBeta(
      defaultRolloutTime: map['defaultRolloutTime'] as String,
      locationRolloutPolicies: (map['locationRolloutPolicies'] as Map).cast<String, String>(),
    );
  }
}

