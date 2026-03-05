// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_network_config_island_mode_cidr.dart';
import 'bare_metal_admin_cluster_network_config_multiple_network_interfaces_config.dart';

class BareMetalAdminClusterNetworkConfig {
  /// Enables the use of advanced Anthos networking features.
  final pulumi.Input<bool>? advancedNetworking;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNetworkConfigIslandModeCidr>? islandModeCidr;
  /// Configuration for multiple network interfaces.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig>? multipleNetworkInterfacesConfig;

  /// Creates a new [BareMetalAdminClusterNetworkConfig].
  /// [advancedNetworking] Enables the use of advanced Anthos networking features.
  /// [islandModeCidr] A nested object resource.
  /// [multipleNetworkInterfacesConfig] Configuration for multiple network interfaces.
  BareMetalAdminClusterNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?advancedNetworking,
      'islandModeCidr': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterNetworkConfigIslandModeCidr, Map<String, dynamic>>(islandModeCidr, (value) => value.toMap()),
      'multipleNetworkInterfacesConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig, Map<String, dynamic>>(multipleNetworkInterfacesConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterNetworkConfig(
      advancedNetworking: (() { final guardedValue = map['advancedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      islandModeCidr: (() { final guardedValue = map['islandModeCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminClusterNetworkConfigIslandModeCidr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multipleNetworkInterfacesConfig: (() { final guardedValue = map['multipleNetworkInterfacesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

