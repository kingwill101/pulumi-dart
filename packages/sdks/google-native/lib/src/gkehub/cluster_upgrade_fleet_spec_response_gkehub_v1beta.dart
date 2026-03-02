// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override_response_gkehub_v1beta.dart';
import 'cluster_upgrade_post_conditions_response_gkehub_v1beta.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecResponseGkehubV1beta {
  /// Allow users to override some properties of each GKE upgrade.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta>> gkeUpgradeOverrides;
  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final pulumi.Input<ClusterUpgradePostConditionsResponseGkehubV1beta> postConditions;
  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final pulumi.Input<List<String>> upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpecResponseGkehubV1beta].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  ClusterUpgradeFleetSpecResponseGkehubV1beta({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta>, List<Map<String, dynamic>>>(gkeUpgradeOverrides, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postConditions': pulumi.Input.mapInputValue<ClusterUpgradePostConditionsResponseGkehubV1beta, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upstreamFleets': upstreamFleets,
    };
  }

  factory ClusterUpgradeFleetSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecResponseGkehubV1beta(
      gkeUpgradeOverrides: (pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta>(map['gkeUpgradeOverrides'], (value) => ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      postConditions: (ClusterUpgradePostConditionsResponseGkehubV1beta.fromMap((map['postConditions'] as Map).cast<String, dynamic>())).input(),
      upstreamFleets: ((map['upstreamFleets'] as List).cast<String>()).input(),
    );
  }
}

