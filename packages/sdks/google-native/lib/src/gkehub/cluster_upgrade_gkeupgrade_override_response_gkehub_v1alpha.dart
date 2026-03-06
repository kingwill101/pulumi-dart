// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_response_gkehub_v1alpha.dart';
import 'cluster_upgrade_post_conditions_response_gkehub_v1alpha.dart';

/// Properties of a GKE upgrade that can be overridden by the user. For example, a user can skip soaking by overriding the soaking to 0.
class ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha {
  /// Post conditions to override for the specified upgrade (name + version). Required.
  final pulumi.Input<ClusterUpgradePostConditionsResponseGkehubV1alpha> postConditions;
  /// Which upgrade to override. Required.
  final pulumi.Input<ClusterUpgradeGKEUpgradeResponseGkehubV1alpha> upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha].
  /// [postConditions] Post conditions to override for the specified upgrade (name + version). Required.
  /// [upgrade] Which upgrade to override. Required.
  const ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postConditions': pulumi.Input.mapInputValue<ClusterUpgradePostConditionsResponseGkehubV1alpha, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upgrade': pulumi.Input.mapInputValue<ClusterUpgradeGKEUpgradeResponseGkehubV1alpha, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha(
      postConditions: pulumi.Input.fromValue(ClusterUpgradePostConditionsResponseGkehubV1alpha.fromMap((map['postConditions']! as Map).cast<String, dynamic>())),
      upgrade: pulumi.Input.fromValue(ClusterUpgradeGKEUpgradeResponseGkehubV1alpha.fromMap((map['upgrade']! as Map).cast<String, dynamic>())),
    );
  }
}

