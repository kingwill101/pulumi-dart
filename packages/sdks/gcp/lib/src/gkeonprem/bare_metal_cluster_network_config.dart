// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_network_config_island_mode_cidr.dart';
import 'bare_metal_cluster_network_config_multiple_network_interfaces_config.dart';
import 'bare_metal_cluster_network_config_sr_iov_config.dart';

class BareMetalClusterNetworkConfig {
  /// Enables the use of advanced Anthos networking features, such as Bundled
  /// Load Balancing with BGP or the egress NAT gateway.
  /// Setting configuration for advanced networking features will automatically
  /// set this flag.
  final pulumi.Input<bool>? advancedNetworking;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNetworkConfigIslandModeCidr>? islandModeCidr;
  /// Configuration for multiple network interfaces.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig>? multipleNetworkInterfacesConfig;
  /// Configuration for SR-IOV.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterNetworkConfigSrIovConfig>? srIovConfig;

  /// Creates a new [BareMetalClusterNetworkConfig].
  /// [advancedNetworking] Enables the use of advanced Anthos networking features, such as Bundled
  /// [islandModeCidr] A nested object resource.
  /// [multipleNetworkInterfacesConfig] Configuration for multiple network interfaces.
  /// [srIovConfig] Configuration for SR-IOV.
  BareMetalClusterNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
    this.srIovConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?advancedNetworking,
      'islandModeCidr': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNetworkConfigIslandModeCidr, Map<String, dynamic>>(islandModeCidr, (value) => value.toMap()),
      'multipleNetworkInterfacesConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig, Map<String, dynamic>>(multipleNetworkInterfacesConfig, (value) => value.toMap()),
      'srIovConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterNetworkConfigSrIovConfig, Map<String, dynamic>>(srIovConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterNetworkConfig(
      advancedNetworking: map['advancedNetworking'] == null ? null : (map['advancedNetworking'] as bool).input(),
      islandModeCidr: map['islandModeCidr'] == null ? null : (BareMetalClusterNetworkConfigIslandModeCidr.fromMap((map['islandModeCidr'] as Map).cast<String, dynamic>())).input(),
      multipleNetworkInterfacesConfig: map['multipleNetworkInterfacesConfig'] == null ? null : (BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfig.fromMap((map['multipleNetworkInterfacesConfig'] as Map).cast<String, dynamic>())).input(),
      srIovConfig: map['srIovConfig'] == null ? null : (BareMetalClusterNetworkConfigSrIovConfig.fromMap((map['srIovConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

