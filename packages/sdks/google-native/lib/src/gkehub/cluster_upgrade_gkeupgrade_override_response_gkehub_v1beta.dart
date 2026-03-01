// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_gkeupgrade_response_gkehub_v1beta.dart';
import 'cluster_upgrade_post_conditions_response_gkehub_v1beta.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final ClusterUpgradePostConditionsResponseGkehubV1beta postConditions;
  /// Which upgrade to override. Required.
  final ClusterUpgradeGKEUpgradeResponseGkehubV1beta upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta].
  /// [postConditions] Post conditions to override for the specified upgrade (name + version). Required.
  /// [upgrade] Which upgrade to override. Required.
  ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postConditions': postConditions.toMap(),
      'upgrade': upgrade.toMap(),
    };
  }

  factory ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta(
      postConditions: ClusterUpgradePostConditionsResponseGkehubV1beta.fromMap((map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: ClusterUpgradeGKEUpgradeResponseGkehubV1beta.fromMap((map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

