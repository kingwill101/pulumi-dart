// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_island_mode_cidr_config_response.dart';
import 'bare_metal_multiple_network_interfaces_config_response.dart';
import 'bare_metal_sr_iov_config_response.dart';

/// Specifies the cluster network configuration.
class BareMetalNetworkConfigResponse {
  /// Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  final pulumi.Input<bool> advancedNetworking;
  /// Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  final pulumi.Input<BareMetalIslandModeCidrConfigResponse> islandModeCidr;
  /// Configuration for multiple network interfaces.
  final pulumi.Input<BareMetalMultipleNetworkInterfacesConfigResponse> multipleNetworkInterfacesConfig;
  /// Configuration for SR-IOV.
  final pulumi.Input<BareMetalSrIovConfigResponse> srIovConfig;

  /// Creates a new [BareMetalNetworkConfigResponse].
  /// [advancedNetworking] Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP or the egress NAT gateway. Setting configuration for advanced networking features will automatically set this flag.
  /// [islandModeCidr] Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, but pods don't have unique addresses across clusters. This doesn't cause problems because pods in one cluster never directly communicate with pods in another cluster. Instead, there are gateways that mediate between a pod in one cluster and a pod in another cluster.
  /// [multipleNetworkInterfacesConfig] Configuration for multiple network interfaces.
  /// [srIovConfig] Configuration for SR-IOV.
  BareMetalNetworkConfigResponse({
    required this.advancedNetworking,
    required this.islandModeCidr,
    required this.multipleNetworkInterfacesConfig,
    required this.srIovConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': advancedNetworking,
      'islandModeCidr': pulumi.Input.mapInputValue<BareMetalIslandModeCidrConfigResponse, Map<String, dynamic>>(islandModeCidr, (value) => value.toMap()),
      'multipleNetworkInterfacesConfig': pulumi.Input.mapInputValue<BareMetalMultipleNetworkInterfacesConfigResponse, Map<String, dynamic>>(multipleNetworkInterfacesConfig, (value) => value.toMap()),
      'srIovConfig': pulumi.Input.mapInputValue<BareMetalSrIovConfigResponse, Map<String, dynamic>>(srIovConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNetworkConfigResponse(
      advancedNetworking: pulumi.Input.fromValue(map['advancedNetworking'] as bool),
      islandModeCidr: pulumi.Input.fromValue(BareMetalIslandModeCidrConfigResponse.fromMap((map['islandModeCidr']! as Map).cast<String, dynamic>())),
      multipleNetworkInterfacesConfig: pulumi.Input.fromValue(BareMetalMultipleNetworkInterfacesConfigResponse.fromMap((map['multipleNetworkInterfacesConfig']! as Map).cast<String, dynamic>())),
      srIovConfig: pulumi.Input.fromValue(BareMetalSrIovConfigResponse.fromMap((map['srIovConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

