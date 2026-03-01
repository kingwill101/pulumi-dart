// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceGroupManagerAutoHealingPolicy {
  /// The health check resource that signals autohealing.
  final String healthCheck;
  /// The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.
  final int initialDelaySec;

  /// Creates a new [GetInstanceGroupManagerAutoHealingPolicy].
  /// [healthCheck] The health check resource that signals autohealing.
  /// [initialDelaySec] The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.
  GetInstanceGroupManagerAutoHealingPolicy({
    required this.healthCheck,
    required this.initialDelaySec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'initialDelaySec': initialDelaySec,
    };
  }

  factory GetInstanceGroupManagerAutoHealingPolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerAutoHealingPolicy(
      healthCheck: map['healthCheck'] as String,
      initialDelaySec: map['initialDelaySec'] as int,
    );
  }
}

