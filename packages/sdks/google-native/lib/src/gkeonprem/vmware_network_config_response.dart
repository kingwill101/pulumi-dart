// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_control_plane_v2_config_response.dart';
import 'vmware_dhcp_ip_config_response.dart';
import 'vmware_host_config_response.dart';
import 'vmware_static_ip_config_response.dart';

/// Specifies network config for the VMware user cluster.
class VmwareNetworkConfigResponse {
  /// Configuration for control plane V2 mode.
  final pulumi.Input<VmwareControlPlaneV2ConfigResponse> controlPlaneV2Config;
  /// Configuration settings for a DHCP IP configuration.
  final pulumi.Input<VmwareDhcpIpConfigResponse> dhcpIpConfig;
  /// Represents common network settings irrespective of the host's IP address.
  final pulumi.Input<VmwareHostConfigResponse> hostConfig;
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final pulumi.Input<List<String>> podAddressCidrBlocks;
  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final pulumi.Input<List<String>> serviceAddressCidrBlocks;
  /// Configuration settings for a static IP configuration.
  final pulumi.Input<VmwareStaticIpConfigResponse> staticIpConfig;
  /// vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  final pulumi.Input<String> vcenterNetwork;

  /// Creates a new [VmwareNetworkConfigResponse].
  /// [controlPlaneV2Config] Configuration for control plane V2 mode.
  /// [dhcpIpConfig] Configuration settings for a DHCP IP configuration.
  /// [hostConfig] Represents common network settings irrespective of the host's IP address.
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  /// [staticIpConfig] Configuration settings for a static IP configuration.
  /// [vcenterNetwork] vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  const VmwareNetworkConfigResponse({
    required this.controlPlaneV2Config,
    required this.dhcpIpConfig,
    required this.hostConfig,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    required this.staticIpConfig,
    required this.vcenterNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneV2Config': pulumi.Input.mapInputValue<VmwareControlPlaneV2ConfigResponse, Map<String, dynamic>>(controlPlaneV2Config, (value) => value.toMap()),
      'dhcpIpConfig': pulumi.Input.mapInputValue<VmwareDhcpIpConfigResponse, Map<String, dynamic>>(dhcpIpConfig, (value) => value.toMap()),
      'hostConfig': pulumi.Input.mapInputValue<VmwareHostConfigResponse, Map<String, dynamic>>(hostConfig, (value) => value.toMap()),
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
      'staticIpConfig': pulumi.Input.mapInputValue<VmwareStaticIpConfigResponse, Map<String, dynamic>>(staticIpConfig, (value) => value.toMap()),
      'vcenterNetwork': vcenterNetwork,
    };
  }

  factory VmwareNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareNetworkConfigResponse(
      controlPlaneV2Config: pulumi.Input.fromValue(VmwareControlPlaneV2ConfigResponse.fromMap((map['controlPlaneV2Config']! as Map).cast<String, dynamic>())),
      dhcpIpConfig: pulumi.Input.fromValue(VmwareDhcpIpConfigResponse.fromMap((map['dhcpIpConfig']! as Map).cast<String, dynamic>())),
      hostConfig: pulumi.Input.fromValue(VmwareHostConfigResponse.fromMap((map['hostConfig']! as Map).cast<String, dynamic>())),
      podAddressCidrBlocks: pulumi.Input.fromValue((map['podAddressCidrBlocks'] as List).cast<String>()),
      serviceAddressCidrBlocks: pulumi.Input.fromValue((map['serviceAddressCidrBlocks'] as List).cast<String>()),
      staticIpConfig: pulumi.Input.fromValue(VmwareStaticIpConfigResponse.fromMap((map['staticIpConfig']! as Map).cast<String, dynamic>())),
      vcenterNetwork: pulumi.Input.fromValue(map['vcenterNetwork'] as String),
    );
  }
}
