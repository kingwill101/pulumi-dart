// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_control_plane_v2_config.dart';
import 'vmware_dhcp_ip_config.dart';
import 'vmware_host_config.dart';
import 'vmware_static_ip_config.dart';

/// Specifies network config for the VMware user cluster.
class VmwareNetworkConfig {
  /// Configuration for control plane V2 mode.
  final VmwareControlPlaneV2Config? controlPlaneV2Config;
  /// Configuration settings for a DHCP IP configuration.
  final VmwareDhcpIpConfig? dhcpIpConfig;
  /// Represents common network settings irrespective of the host's IP address.
  final VmwareHostConfig? hostConfig;
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;
  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final List<String> serviceAddressCidrBlocks;
  /// Configuration settings for a static IP configuration.
  final VmwareStaticIpConfig? staticIpConfig;
  /// vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  final String? vcenterNetwork;

  /// Creates a new [VmwareNetworkConfig].
  /// [controlPlaneV2Config] Configuration for control plane V2 mode.
  /// [dhcpIpConfig] Configuration settings for a DHCP IP configuration.
  /// [hostConfig] Represents common network settings irrespective of the host's IP address.
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  /// [staticIpConfig] Configuration settings for a static IP configuration.
  /// [vcenterNetwork] vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  VmwareNetworkConfig({
    this.controlPlaneV2Config,
    this.dhcpIpConfig,
    this.hostConfig,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    this.staticIpConfig,
    this.vcenterNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneV2Config': ?controlPlaneV2Config == null ? null : controlPlaneV2Config!.toMap(),
      'dhcpIpConfig': ?dhcpIpConfig == null ? null : dhcpIpConfig!.toMap(),
      'hostConfig': ?hostConfig == null ? null : hostConfig!.toMap(),
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
      'staticIpConfig': ?staticIpConfig == null ? null : staticIpConfig!.toMap(),
      'vcenterNetwork': ?vcenterNetwork,
    };
  }

  factory VmwareNetworkConfig.fromMap(Map<String, dynamic> map) {
    return VmwareNetworkConfig(
      controlPlaneV2Config: map['controlPlaneV2Config'] == null ? null : VmwareControlPlaneV2Config.fromMap((map['controlPlaneV2Config'] as Map).cast<String, dynamic>()),
      dhcpIpConfig: map['dhcpIpConfig'] == null ? null : VmwareDhcpIpConfig.fromMap((map['dhcpIpConfig'] as Map).cast<String, dynamic>()),
      hostConfig: map['hostConfig'] == null ? null : VmwareHostConfig.fromMap((map['hostConfig'] as Map).cast<String, dynamic>()),
      podAddressCidrBlocks: (map['podAddressCidrBlocks'] as List).cast<String>(),
      serviceAddressCidrBlocks: (map['serviceAddressCidrBlocks'] as List).cast<String>(),
      staticIpConfig: map['staticIpConfig'] == null ? null : VmwareStaticIpConfig.fromMap((map['staticIpConfig'] as Map).cast<String, dynamic>()),
      vcenterNetwork: map['vcenterNetwork'] == null ? null : map['vcenterNetwork'] as String,
    );
  }
}

