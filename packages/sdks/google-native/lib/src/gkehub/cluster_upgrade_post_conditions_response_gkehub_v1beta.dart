// ignore_for_file: unused_element, unnecessary_cast


/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditionsResponseGkehubV1beta {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final String soaking;

  /// Creates a new [ClusterUpgradePostConditionsResponseGkehubV1beta].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  ClusterUpgradePostConditionsResponseGkehubV1beta({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'soaking': soaking,
    };
  }

  factory ClusterUpgradePostConditionsResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePostConditionsResponseGkehubV1beta(
      soaking: map['soaking'] as String,
    );
  }
}

