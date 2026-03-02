// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Post conditional checks after an upgrade has been applied on all eligible clusters.
class ClusterUpgradePostConditionsGkehubV1alpha {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  final pulumi.Input<String> soaking;

  /// Creates a new [ClusterUpgradePostConditionsGkehubV1alpha].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days. Required.
  ClusterUpgradePostConditionsGkehubV1alpha({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'soaking': soaking,
    };
  }

  factory ClusterUpgradePostConditionsGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePostConditionsGkehubV1alpha(
      soaking: (map['soaking'] as String).input(),
    );
  }
}

