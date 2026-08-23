// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingPlanHostPool {
  /// The ID of the HostPool to assign the Scaling Plan to.
  final pulumi.Input<String> hostpoolId;
  /// Specifies if the scaling plan is enabled or disabled for the HostPool.
  final pulumi.Input<bool> scalingPlanEnabled;

  /// Creates a new [ScalingPlanHostPool].
  /// [hostpoolId] The ID of the HostPool to assign the Scaling Plan to.
  /// [scalingPlanEnabled] Specifies if the scaling plan is enabled or disabled for the HostPool.
  const ScalingPlanHostPool({
    required this.hostpoolId,
    required this.scalingPlanEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostpoolId': hostpoolId,
      'scalingPlanEnabled': scalingPlanEnabled,
    };
  }

  factory ScalingPlanHostPool.fromMap(Map<String, dynamic> map) {
    return ScalingPlanHostPool(
      hostpoolId: pulumi.Input.fromValue(map['hostpoolId'] as String),
      scalingPlanEnabled: pulumi.Input.fromValue(map['scalingPlanEnabled'] as bool),
    );
  }
}
