// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAddonsConfigLustreCsiDriverConfig {
  /// If set to true, the Lustre CSI driver will initialize LNet (the virtual network layer for Lustre kernel module) using port 6988.
  /// This flag is required to workaround a port conflict with the gke-metadata-server on GKE nodes.
  final pulumi.Input<bool> enableLegacyLustrePort;
  /// Whether the Lustre CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterAddonsConfigLustreCsiDriverConfig].
  /// [enableLegacyLustrePort] If set to true, the Lustre CSI driver will initialize LNet (the virtual network layer for Lustre kernel module) using port 6988.
  /// [enabled] Whether the Lustre CSI driver is enabled for this cluster.
  const GetClusterAddonsConfigLustreCsiDriverConfig({
    required this.enableLegacyLustrePort,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableLegacyLustrePort': enableLegacyLustrePort,
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigLustreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigLustreCsiDriverConfig(
      enableLegacyLustrePort: pulumi.Input.fromValue(map['enableLegacyLustrePort'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

