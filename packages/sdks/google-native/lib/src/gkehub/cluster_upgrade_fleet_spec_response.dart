// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override_response.dart';
import 'cluster_upgrade_post_conditions_response.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecResponse {
  /// Allow users to override some properties of each GKE upgrade.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeOverrideResponse>> gkeUpgradeOverrides;
  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final pulumi.Input<ClusterUpgradePostConditionsResponse> postConditions;
  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final pulumi.Input<List<String>> upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpecResponse].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  const ClusterUpgradeFleetSpecResponse({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': pulumi.Input.mapInputValue<List<ClusterUpgradeGKEUpgradeOverrideResponse>, List<Map<String, dynamic>>>(gkeUpgradeOverrides, (value) => pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postConditions': pulumi.Input.mapInputValue<ClusterUpgradePostConditionsResponse, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upstreamFleets': upstreamFleets,
    };
  }

  factory ClusterUpgradeFleetSpecResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecResponse(
      gkeUpgradeOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeOverrideResponse>(map['gkeUpgradeOverrides']!, (value) => ClusterUpgradeGKEUpgradeOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))),
      postConditions: pulumi.Input.fromValue(ClusterUpgradePostConditionsResponse.fromMap((map['postConditions']! as Map).cast<String, dynamic>())),
      upstreamFleets: pulumi.Input.fromValue((map['upstreamFleets'] as List).cast<String>()),
    );
  }
}
