// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override_gkehub_v1alpha.dart';
import 'cluster_upgrade_post_conditions_gkehub_v1alpha.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecGkehubV1alpha {
  /// Allow users to override some properties of each GKE upgrade.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha>>? gkeUpgradeOverrides;
  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final pulumi.Input<ClusterUpgradePostConditionsGkehubV1alpha> postConditions;
  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final pulumi.Input<List<String>>? upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpecGkehubV1alpha].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  ClusterUpgradeFleetSpecGkehubV1alpha({
    this.gkeUpgradeOverrides,
    required this.postConditions,
    this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': ?pulumi.Input.mapOptionalInputValue<List<ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha>, List<Map<String, dynamic>>>(gkeUpgradeOverrides, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postConditions': pulumi.Input.mapInputValue<ClusterUpgradePostConditionsGkehubV1alpha, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upstreamFleets': ?upstreamFleets,
    };
  }

  factory ClusterUpgradeFleetSpecGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecGkehubV1alpha(
      gkeUpgradeOverrides: map['gkeUpgradeOverrides'] == null ? null : (pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha>(map['gkeUpgradeOverrides'], (value) => ClusterUpgradeGKEUpgradeOverrideGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
      postConditions: (ClusterUpgradePostConditionsGkehubV1alpha.fromMap((map['postConditions'] as Map).cast<String, dynamic>())).input(),
      upstreamFleets: map['upstreamFleets'] == null ? null : ((map['upstreamFleets'] as List).cast<String>()).input(),
    );
  }
}

