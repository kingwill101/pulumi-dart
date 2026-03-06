// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig].
  /// [enabled] Required.
  const GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigRayOperatorConfigRayClusterMonitoringConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

