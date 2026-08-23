// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigLustreCsiDriverConfig {
  /// When set to true, this disables multi-NIC support for the Lustre CSI driver. By default, GKE enables multi-NIC support, which allows the Lustre CSI driver to automatically detect and configure all suitable network interfaces on a node to maximize I/O performance for demanding workloads.
  final pulumi.Input<bool>? disableMultiNic;
  /// which allows the Lustre CSI driver to initialize LNet (the virtual networklayer for Lustre kernel module) using port 6988.
  /// This flag is required to workaround a port conflict with the gke-metadata-server on GKE nodes.
  final pulumi.Input<bool>? enableLegacyLustrePort;
  /// Whether the Lustre CSI driver is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigLustreCsiDriverConfig].
  /// [disableMultiNic] When set to true, this disables multi-NIC support for the Lustre CSI driver. By default, GKE enables multi-NIC support, which allows the Lustre CSI driver to automatically detect and configure all suitable network interfaces on a node to maximize I/O performance for demanding workloads.
  /// [enableLegacyLustrePort] which allows the Lustre CSI driver to initialize LNet (the virtual networklayer for Lustre kernel module) using port 6988.
  /// [enabled] Whether the Lustre CSI driver is enabled for this cluster.
  const ClusterAddonsConfigLustreCsiDriverConfig({
    this.disableMultiNic,
    this.enableLegacyLustrePort,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMultiNic': ?disableMultiNic,
      'enableLegacyLustrePort': ?enableLegacyLustrePort,
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigLustreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigLustreCsiDriverConfig(
      disableMultiNic: (() { final guardedValue = map['disableMultiNic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableLegacyLustrePort: (() { final guardedValue = map['enableLegacyLustrePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
