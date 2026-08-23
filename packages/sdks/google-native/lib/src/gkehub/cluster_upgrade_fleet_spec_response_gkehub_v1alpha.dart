// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override_response_gkehub_v1alpha.dart';
import 'cluster_upgrade_post_conditions_response_gkehub_v1alpha.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecResponseGkehubV1alpha {
  /// Allow users to override some properties of each GKE upgrade.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha>> gkeUpgradeOverrides;
  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final pulumi.Input<ClusterUpgradePostConditionsResponseGkehubV1alpha> postConditions;
  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final pulumi.Input<List<String>> upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpecResponseGkehubV1alpha].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  const ClusterUpgradeFleetSpecResponseGkehubV1alpha({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha>, List<Map<String, dynamic>>>(gkeUpgradeOverrides, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postConditions': pulumi.Input.mapInputValue<ClusterUpgradePostConditionsResponseGkehubV1alpha, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upstreamFleets': upstreamFleets,
    };
  }

  factory ClusterUpgradeFleetSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecResponseGkehubV1alpha(
      gkeUpgradeOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha>(map['gkeUpgradeOverrides']!, (value) => ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>()))),
      postConditions: pulumi.Input.fromValue(ClusterUpgradePostConditionsResponseGkehubV1alpha.fromMap((map['postConditions']! as Map).cast<String, dynamic>())),
      upstreamFleets: pulumi.Input.fromValue((map['upstreamFleets'] as List).cast<String>()),
    );
  }
}
