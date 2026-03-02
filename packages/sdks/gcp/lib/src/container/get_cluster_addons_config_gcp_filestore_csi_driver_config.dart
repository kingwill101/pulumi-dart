// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigGcpFilestoreCsiDriverConfig {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigGcpFilestoreCsiDriverConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigGcpFilestoreCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigGcpFilestoreCsiDriverConfig(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

