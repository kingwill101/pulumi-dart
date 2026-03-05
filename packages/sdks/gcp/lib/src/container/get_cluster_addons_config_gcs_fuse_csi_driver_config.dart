// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigGcsFuseCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigGcsFuseCsiDriverConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigGcsFuseCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigGcsFuseCsiDriverConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

