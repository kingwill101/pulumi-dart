// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigGcpFilestoreCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigGcpFilestoreCsiDriverConfig].
  /// [enabled] Required.
  ClusterAddonsConfigGcpFilestoreCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigGcpFilestoreCsiDriverConfig(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

