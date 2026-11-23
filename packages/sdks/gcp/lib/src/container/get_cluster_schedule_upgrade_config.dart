// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterScheduleUpgradeConfig {
  /// Whether scheduled upgrades are enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterScheduleUpgradeConfig].
  /// [enabled] Whether scheduled upgrades are enabled.
  const GetClusterScheduleUpgradeConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterScheduleUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterScheduleUpgradeConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
