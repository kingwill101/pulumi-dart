// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_spec_clusterupgrade_gke_upgrade_override_post_condition.dart';
import 'get_feature_spec_clusterupgrade_gke_upgrade_override_upgrade.dart';

class GetFeatureSpecClusterupgradeGkeUpgradeOverride {
  /// Post conditions to override for the specified upgrade.
  final pulumi.Input<List<GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition>> postConditions;
  /// Which upgrade to override.
  final pulumi.Input<List<GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade>> upgrades;

  /// Creates a new [GetFeatureSpecClusterupgradeGkeUpgradeOverride].
  /// [postConditions] Post conditions to override for the specified upgrade.
  /// [upgrades] Which upgrade to override.
  GetFeatureSpecClusterupgradeGkeUpgradeOverride({
    required this.postConditions,
    required this.upgrades,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postConditions': pulumi.Input.mapInputValue<List<GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition>, List<Map<String, dynamic>>>(postConditions, (value) => pulumi.Input.encodeList<GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgrades': pulumi.Input.mapInputValue<List<GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade>, List<Map<String, dynamic>>>(upgrades, (value) => pulumi.Input.encodeList<GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFeatureSpecClusterupgradeGkeUpgradeOverride.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecClusterupgradeGkeUpgradeOverride(
      postConditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition>(map['postConditions']!, (value) => GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition.fromMap((value as Map).cast<String, dynamic>()))),
      upgrades: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade>(map['upgrades']!, (value) => GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

