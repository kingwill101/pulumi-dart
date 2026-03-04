// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override.dart';
import 'cluster_upgrade_post_conditions.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpec {
  /// Allow users to override some properties of each GKE upgrade.
  final pulumi.Input<List<ClusterUpgradeGKEUpgradeOverride>>?
  gkeUpgradeOverrides;

  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final pulumi.Input<ClusterUpgradePostConditions> postConditions;

  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final pulumi.Input<List<String>>? upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpec].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  ClusterUpgradeFleetSpec({
    this.gkeUpgradeOverrides,
    required this.postConditions,
    this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterUpgradeGKEUpgradeOverride>,
            List<Map<String, dynamic>>
          >(
            gkeUpgradeOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterUpgradeGKEUpgradeOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'postConditions':
          pulumi.Input.mapInputValue<
            ClusterUpgradePostConditions,
            Map<String, dynamic>
          >(postConditions, (value) => value.toMap()),
      'upstreamFleets': ?upstreamFleets,
    };
  }

  factory ClusterUpgradeFleetSpec.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpec(
      gkeUpgradeOverrides: (() {
        final guardedValue = map['gkeUpgradeOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeOverride>(
            guardedValue,
            (value) => ClusterUpgradeGKEUpgradeOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      postConditions: pulumi.Input.fromValue(
        ClusterUpgradePostConditions.fromMap(
          (map['postConditions']! as Map).cast<String, dynamic>(),
        ),
      ),
      upstreamFleets: (() {
        final guardedValue = map['upstreamFleets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
