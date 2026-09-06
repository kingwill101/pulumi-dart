// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a metric to load balance a service during runtime.
class ScalingPolicy {
  /// Specifies the mechanism associated with this scaling policy
  final pulumi.Input<dynamic> scalingMechanism;
  /// Specifies the trigger associated with this scaling policy.
  final pulumi.Input<dynamic> scalingTrigger;

  /// Creates a new [ScalingPolicy].
  /// [scalingMechanism] Specifies the mechanism associated with this scaling policy
  /// [scalingTrigger] Specifies the trigger associated with this scaling policy.
  const ScalingPolicy({
    required this.scalingMechanism,
    required this.scalingTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scalingMechanism': scalingMechanism,
      'scalingTrigger': scalingTrigger,
    };
  }

  factory ScalingPolicy.fromMap(Map<String, dynamic> map) {
    return ScalingPolicy(
      scalingMechanism: pulumi.Input.fromValue(map['scalingMechanism']),
      scalingTrigger: pulumi.Input.fromValue(map['scalingTrigger']),
    );
  }
}
