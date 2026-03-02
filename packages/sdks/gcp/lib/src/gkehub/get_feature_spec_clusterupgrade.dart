// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_spec_clusterupgrade_gke_upgrade_override.dart';
import 'get_feature_spec_clusterupgrade_post_condition.dart';

class GetFeatureSpecClusterupgrade {
  /// Configuration overrides for individual upgrades.
  final pulumi.Input<List<GetFeatureSpecClusterupgradeGkeUpgradeOverride>> gkeUpgradeOverrides;
  /// Post conditions to override for the specified upgrade.
  final pulumi.Input<List<GetFeatureSpecClusterupgradePostCondition>> postConditions;
  /// Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id.
  final pulumi.Input<List<String>> upstreamFleets;

  /// Creates a new [GetFeatureSpecClusterupgrade].
  /// [gkeUpgradeOverrides] Configuration overrides for individual upgrades.
  /// [postConditions] Post conditions to override for the specified upgrade.
  /// [upstreamFleets] Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id.
  GetFeatureSpecClusterupgrade({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': pulumi.Input.mapInputValue<List<GetFeatureSpecClusterupgradeGkeUpgradeOverride>, List<Map<String, dynamic>>>(gkeUpgradeOverrides, (value) => pulumi.Input.encodeList<GetFeatureSpecClusterupgradeGkeUpgradeOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postConditions': pulumi.Input.mapInputValue<List<GetFeatureSpecClusterupgradePostCondition>, List<Map<String, dynamic>>>(postConditions, (value) => pulumi.Input.encodeList<GetFeatureSpecClusterupgradePostCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upstreamFleets': upstreamFleets,
    };
  }

  factory GetFeatureSpecClusterupgrade.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecClusterupgrade(
      gkeUpgradeOverrides: (pulumi.Input.decodeList<GetFeatureSpecClusterupgradeGkeUpgradeOverride>(map['gkeUpgradeOverrides'], (value) => GetFeatureSpecClusterupgradeGkeUpgradeOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      postConditions: (pulumi.Input.decodeList<GetFeatureSpecClusterupgradePostCondition>(map['postConditions'], (value) => GetFeatureSpecClusterupgradePostCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      upstreamFleets: ((map['upstreamFleets'] as List).cast<String>()).input(),
    );
  }
}

