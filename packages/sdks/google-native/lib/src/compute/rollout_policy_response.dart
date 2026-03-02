// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rollout policy configuration.
class RolloutPolicyResponse {
  /// An optional RFC3339 timestamp on or after which the update is considered rolled out to any zone that is not explicitly stated.
  final pulumi.Input<String> defaultRolloutTime;
  /// Location based rollout policies to apply to the resource. Currently only zone names are supported and must be represented as valid URLs, like: zones/us-central1-a. The value expects an RFC3339 timestamp on or after which the update is considered rolled out to the specified location.
  final pulumi.Input<Map<String, String>> locationRolloutPolicies;

  /// Creates a new [RolloutPolicyResponse].
  /// [defaultRolloutTime] An optional RFC3339 timestamp on or after which the update is considered rolled out to any zone that is not explicitly stated.
  /// [locationRolloutPolicies] Location based rollout policies to apply to the resource. Currently only zone names are supported and must be represented as valid URLs, like: zones/us-central1-a. The value expects an RFC3339 timestamp on or after which the update is considered rolled out to the specified location.
  RolloutPolicyResponse({
    required this.defaultRolloutTime,
    required this.locationRolloutPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRolloutTime': defaultRolloutTime,
      'locationRolloutPolicies': locationRolloutPolicies,
    };
  }

  factory RolloutPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RolloutPolicyResponse(
      defaultRolloutTime: (map['defaultRolloutTime'] as String).input(),
      locationRolloutPolicies: ((map['locationRolloutPolicies'] as Map).cast<String, String>()).input(),
    );
  }
}

