// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_island_mode_cidr_config.dart';
import 'bare_metal_multiple_network_interfaces_config.dart';
import 'bare_metal_sr_iov_config.dart';

/// Specifies the cluster network configuration.
class BareMetalNetworkConfig {
  /// Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  final pulumi.Input<bool>? advancedNetworking;
  /// Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  final pulumi.Input<BareMetalIslandModeCidrConfig>? islandModeCidr;
  /// Configuration for multiple network interfaces.
  final pulumi.Input<BareMetalMultipleNetworkInterfacesConfig>? multipleNetworkInterfacesConfig;
  /// Configuration for SR-IOV.
  final pulumi.Input<BareMetalSrIovConfig>? srIovConfig;

  /// Creates a new [BareMetalNetworkConfig].
  /// [advancedNetworking] Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  /// [islandModeCidr] Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  /// [multipleNetworkInterfacesConfig] Configuration for multiple network interfaces.
  /// [srIovConfig] Configuration for SR-IOV.
  const BareMetalNetworkConfig({
    this.advancedNetworking,
    this.islandModeCidr,
    this.multipleNetworkInterfacesConfig,
    this.srIovConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?advancedNetworking,
      'islandModeCidr': ?pulumi.Input.mapOptionalInputValue<BareMetalIslandModeCidrConfig, Map<String, dynamic>>(islandModeCidr, (value) => value.toMap()),
      'multipleNetworkInterfacesConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalMultipleNetworkInterfacesConfig, Map<String, dynamic>>(multipleNetworkInterfacesConfig, (value) => value.toMap()),
      'srIovConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalSrIovConfig, Map<String, dynamic>>(srIovConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalNetworkConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNetworkConfig(
      advancedNetworking: (() { final guardedValue = map['advancedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      islandModeCidr: (() { final guardedValue = map['islandModeCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalIslandModeCidrConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multipleNetworkInterfacesConfig: (() { final guardedValue = map['multipleNetworkInterfacesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalMultipleNetworkInterfacesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      srIovConfig: (() { final guardedValue = map['srIovConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalSrIovConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

