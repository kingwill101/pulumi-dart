// ignore_for_file: unused_element, unnecessary_cast


class ScalingPlanHostPool {
  /// The ID of the HostPool to assign the Scaling Plan to.
  final String hostpoolId;
  /// Specifies if the scaling plan is enabled or disabled for the HostPool.
  final bool scalingPlanEnabled;

  /// Creates a new [ScalingPlanHostPool].
  /// [hostpoolId] The ID of the HostPool to assign the Scaling Plan to.
  /// [scalingPlanEnabled] Specifies if the scaling plan is enabled or disabled for the HostPool.
  ScalingPlanHostPool({
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
      hostpoolId: map['hostpoolId'] as String,
      scalingPlanEnabled: map['scalingPlanEnabled'] as bool,
    );
  }
}

