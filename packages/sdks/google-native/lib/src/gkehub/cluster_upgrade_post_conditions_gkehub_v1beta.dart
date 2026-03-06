// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditionsGkehubV1beta {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final pulumi.Input<String> soaking;

  /// Creates a new [ClusterUpgradePostConditionsGkehubV1beta].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  const ClusterUpgradePostConditionsGkehubV1beta({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'soaking': soaking,
    };
  }

  factory ClusterUpgradePostConditionsGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePostConditionsGkehubV1beta(
      soaking: pulumi.Input.fromValue(map['soaking'] as String),
    );
  }
}

