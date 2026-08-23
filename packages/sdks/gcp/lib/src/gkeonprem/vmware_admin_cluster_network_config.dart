// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_network_config_dhcp_ip_config.dart';
import 'vmware_admin_cluster_network_config_ha_control_plane_config.dart';
import 'vmware_admin_cluster_network_config_host_config.dart';
import 'vmware_admin_cluster_network_config_static_ip_config.dart';

class VmwareAdminClusterNetworkConfig {
  /// Configuration settings for a DHCP IP configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfigDhcpIpConfig>? dhcpIpConfig;
  /// Configuration for HA admin cluster control plane.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfigHaControlPlaneConfig>? haControlPlaneConfig;
  /// Represents common network settings irrespective of the host's IP address.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfigHostConfig>? hostConfig;
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
  /// Only a single range is supported. This field cannot be changed after creation.
  final pulumi.Input<List<String>> podAddressCidrBlocks;
  /// All services in the cluster are assigned an RFC1918 IPv4 address
  /// from these ranges. Only a single range is supported.. This field
  /// cannot be changed after creation.
  final pulumi.Input<List<String>> serviceAddressCidrBlocks;
  /// Configuration settings for a static IP configuration.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterNetworkConfigStaticIpConfig>? staticIpConfig;
  /// vcenter_network specifies vCenter network name.
  final pulumi.Input<String>? vcenterNetwork;

  /// Creates a new [VmwareAdminClusterNetworkConfig].
  /// [dhcpIpConfig] Configuration settings for a DHCP IP configuration.
  /// [haControlPlaneConfig] Configuration for HA admin cluster control plane.
  /// [hostConfig] Represents common network settings irrespective of the host's IP address.
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address
  /// [staticIpConfig] Configuration settings for a static IP configuration.
  /// [vcenterNetwork] vcenter_network specifies vCenter network name.
  const VmwareAdminClusterNetworkConfig({
    this.dhcpIpConfig,
    this.haControlPlaneConfig,
    this.hostConfig,
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    this.staticIpConfig,
    this.vcenterNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpIpConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterNetworkConfigDhcpIpConfig, Map<String, dynamic>>(dhcpIpConfig, (value) => value.toMap()),
      'haControlPlaneConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterNetworkConfigHaControlPlaneConfig, Map<String, dynamic>>(haControlPlaneConfig, (value) => value.toMap()),
      'hostConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterNetworkConfigHostConfig, Map<String, dynamic>>(hostConfig, (value) => value.toMap()),
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
      'staticIpConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterNetworkConfigStaticIpConfig, Map<String, dynamic>>(staticIpConfig, (value) => value.toMap()),
      'vcenterNetwork': ?vcenterNetwork,
    };
  }

  factory VmwareAdminClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterNetworkConfig(
      dhcpIpConfig: (() { final guardedValue = map['dhcpIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterNetworkConfigDhcpIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      haControlPlaneConfig: (() { final guardedValue = map['haControlPlaneConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterNetworkConfigHaControlPlaneConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostConfig: (() { final guardedValue = map['hostConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterNetworkConfigHostConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podAddressCidrBlocks: pulumi.Input.fromValue((map['podAddressCidrBlocks'] as List).cast<String>()),
      serviceAddressCidrBlocks: pulumi.Input.fromValue((map['serviceAddressCidrBlocks'] as List).cast<String>()),
      staticIpConfig: (() { final guardedValue = map['staticIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterNetworkConfigStaticIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vcenterNetwork: (() { final guardedValue = map['vcenterNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
