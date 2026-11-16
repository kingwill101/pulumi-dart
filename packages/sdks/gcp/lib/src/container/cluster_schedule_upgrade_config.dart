// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterScheduleUpgradeConfig {
  /// Whether scheduled upgrades are enabled on the cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterScheduleUpgradeConfig].
  /// [enabled] Whether scheduled upgrades are enabled on the cluster.
  const ClusterScheduleUpgradeConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterScheduleUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterScheduleUpgradeConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
