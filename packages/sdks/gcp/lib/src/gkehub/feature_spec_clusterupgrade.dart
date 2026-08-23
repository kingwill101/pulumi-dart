// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_spec_clusterupgrade_gke_upgrade_override.dart';
import 'feature_spec_clusterupgrade_post_conditions.dart';

class FeatureSpecClusterupgrade {
  /// Configuration overrides for individual upgrades.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureSpecClusterupgradeGkeUpgradeOverride>>? gkeUpgradeOverrides;
  /// Post conditions to override for the specified upgrade.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecClusterupgradePostConditions>? postConditions;
  /// Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id.
  final pulumi.Input<List<String>> upstreamFleets;

  /// Creates a new [FeatureSpecClusterupgrade].
  /// [gkeUpgradeOverrides] Configuration overrides for individual upgrades.
  /// [postConditions] Post conditions to override for the specified upgrade.
  /// [upstreamFleets] Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id.
  const FeatureSpecClusterupgrade({
    this.gkeUpgradeOverrides,
    this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': ?pulumi.Input.mapOptionalInputValue<List<FeatureSpecClusterupgradeGkeUpgradeOverride>, List<Map<String, dynamic>>>(gkeUpgradeOverrides, (value) => pulumi.Input.encodeList<FeatureSpecClusterupgradeGkeUpgradeOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postConditions': ?pulumi.Input.mapOptionalInputValue<FeatureSpecClusterupgradePostConditions, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upstreamFleets': upstreamFleets,
    };
  }

  factory FeatureSpecClusterupgrade.fromMap(Map<String, dynamic> map) {
    return FeatureSpecClusterupgrade(
      gkeUpgradeOverrides: (() { final guardedValue = map['gkeUpgradeOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureSpecClusterupgradeGkeUpgradeOverride>(guardedValue, (value) => FeatureSpecClusterupgradeGkeUpgradeOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      postConditions: (() { final guardedValue = map['postConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpecClusterupgradePostConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upstreamFleets: pulumi.Input.fromValue((map['upstreamFleets'] as List).cast<String>()),
    );
  }
}
