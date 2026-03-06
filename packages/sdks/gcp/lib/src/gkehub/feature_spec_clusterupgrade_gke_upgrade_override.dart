// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_spec_clusterupgrade_gke_upgrade_override_post_conditions.dart';
import 'feature_spec_clusterupgrade_gke_upgrade_override_upgrade.dart';

class FeatureSpecClusterupgradeGkeUpgradeOverride {
  /// Post conditions to override for the specified upgrade.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions> postConditions;
  /// Which upgrade to override.
  /// Structure is documented below.
  final pulumi.Input<FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade> upgrade;

  /// Creates a new [FeatureSpecClusterupgradeGkeUpgradeOverride].
  /// [postConditions] Post conditions to override for the specified upgrade.
  /// [upgrade] Which upgrade to override.
  const FeatureSpecClusterupgradeGkeUpgradeOverride({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postConditions': pulumi.Input.mapInputValue<FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions, Map<String, dynamic>>(postConditions, (value) => value.toMap()),
      'upgrade': pulumi.Input.mapInputValue<FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory FeatureSpecClusterupgradeGkeUpgradeOverride.fromMap(Map<String, dynamic> map) {
    return FeatureSpecClusterupgradeGkeUpgradeOverride(
      postConditions: pulumi.Input.fromValue(FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions.fromMap((map['postConditions']! as Map).cast<String, dynamic>())),
      upgrade: pulumi.Input.fromValue(FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade.fromMap((map['upgrade']! as Map).cast<String, dynamic>())),
    );
  }
}

