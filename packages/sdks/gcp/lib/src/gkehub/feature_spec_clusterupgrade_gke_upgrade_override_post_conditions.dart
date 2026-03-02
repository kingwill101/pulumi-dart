// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions {
  /// Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.
  final pulumi.Input<String> soaking;

  /// Creates a new [FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions].
  /// [soaking] Amount of time to "soak" after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.
  FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions({
    required this.soaking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'soaking': soaking,
    };
  }

  factory FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions.fromMap(Map<String, dynamic> map) {
    return FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions(
      soaking: (map['soaking'] as String).input(),
    );
  }
}

