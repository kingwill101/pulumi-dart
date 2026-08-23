// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigNodeReadinessConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigNodeReadinessConfig].
  /// [enabled] Required.
  const ClusterAddonsConfigNodeReadinessConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigNodeReadinessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigNodeReadinessConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
