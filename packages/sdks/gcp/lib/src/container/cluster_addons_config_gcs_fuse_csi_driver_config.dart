// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigGcsFuseCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigGcsFuseCsiDriverConfig].
  /// [enabled] Required.
  const ClusterAddonsConfigGcsFuseCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigGcsFuseCsiDriverConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

