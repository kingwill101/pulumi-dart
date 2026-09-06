// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a metric to load balance a service during runtime.
class ScalingPolicyResponse {
  /// Specifies the mechanism associated with this scaling policy
  final pulumi.Input<dynamic> scalingMechanism;
  /// Specifies the trigger associated with this scaling policy.
  final pulumi.Input<dynamic> scalingTrigger;

  /// Creates a new [ScalingPolicyResponse].
  /// [scalingMechanism] Specifies the mechanism associated with this scaling policy
  /// [scalingTrigger] Specifies the trigger associated with this scaling policy.
  const ScalingPolicyResponse({
    required this.scalingMechanism,
    required this.scalingTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scalingMechanism': scalingMechanism,
      'scalingTrigger': scalingTrigger,
    };
  }

  factory ScalingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ScalingPolicyResponse(
      scalingMechanism: pulumi.Input.fromValue(map['scalingMechanism']),
      scalingTrigger: pulumi.Input.fromValue(map['scalingTrigger']),
    );
  }
}
