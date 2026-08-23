// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerAutoHealingPolicy {
  /// The health check resource that signals autohealing.
  final pulumi.Input<String> healthCheck;
  /// The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.
  final pulumi.Input<int> initialDelaySec;

  /// Creates a new [GetRegionInstanceGroupManagerAutoHealingPolicy].
  /// [healthCheck] The health check resource that signals autohealing.
  /// [initialDelaySec] The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.
  const GetRegionInstanceGroupManagerAutoHealingPolicy({
    required this.healthCheck,
    required this.initialDelaySec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'initialDelaySec': initialDelaySec,
    };
  }

  factory GetRegionInstanceGroupManagerAutoHealingPolicy.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerAutoHealingPolicy(
      healthCheck: pulumi.Input.fromValue(map['healthCheck'] as String),
      initialDelaySec: pulumi.Input.fromValue(map['initialDelaySec'] as int),
    );
  }
}
