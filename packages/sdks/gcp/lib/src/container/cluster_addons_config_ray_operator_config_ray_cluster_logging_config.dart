// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig].
  /// [enabled] Required.
  ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAddonsConfigRayOperatorConfigRayClusterLoggingConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
