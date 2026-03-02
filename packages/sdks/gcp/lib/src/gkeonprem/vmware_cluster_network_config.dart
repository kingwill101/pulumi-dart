// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_network_config_control_plane_v2_config.dart';
import 'vmware_cluster_network_config_dhcp_ip_config.dart';
import 'vmware_cluster_network_config_host_config.dart';
import 'vmware_cluster_network_config_static_ip_config.dart';

class VMwareClusterNetworkConfig {
  /// Configuration for control plane V2 mode.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterNetworkConfigControlPlaneV2Config>? controlPlaneV2Config;
  /// Configuration settings for a DHCP IP configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterNetworkConfigDhcpIpConfig>? dhcpIpConfig;
  /// Represents common network settings irrespective of the host's IP address.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterNetworkConfigHostConfig>? hostConfig;
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
  /// Only a single range is supported. This field cannot be changed after creation.
  final pulumi.Input<List<String>> podAddressCidrBlocks;
  /// All services in the cluster are assigned an RFC1918 IPv4 address
  /// from these ranges. Only a single range is supported.. This field
  /// cannot be changed after creation.
  final pulumi.Input<List<String>> serviceAddressCidrBlocks;
  /// Configuration settings for a static IP configuration.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterNetworkConfigStaticIpConfig>? staticIpConfig;
  /// vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  final pulumi.Input<String>? vcenterNetwork;

  /// Creates a new [VMwareClusterNetworkConfig].
  /// [controlPlaneV2Config] Configuration for control plane V2 mode.
  /// [dhcpIpConfig] Configuration settings for a DHCP IP configuration.
  /// [hostConfig] Represents common network settings irrespective of the host's IP address.
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address
  /// [staticIpConfig] Configuration settings for a static IP configuration.
  /// [vcenterNetwork] vcenter_network specifies vCenter network name. Inherited from the admin cluster.
  VMwareClusterNetworkConfig({
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
      'controlPlaneV2Config': ?pulumi.Input.mapOptionalInputValue<VMwareClusterNetworkConfigControlPlaneV2Config, Map<String, dynamic>>(controlPlaneV2Config, (value) => value.toMap()),
      'dhcpIpConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterNetworkConfigDhcpIpConfig, Map<String, dynamic>>(dhcpIpConfig, (value) => value.toMap()),
      'hostConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterNetworkConfigHostConfig, Map<String, dynamic>>(hostConfig, (value) => value.toMap()),
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
      'staticIpConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterNetworkConfigStaticIpConfig, Map<String, dynamic>>(staticIpConfig, (value) => value.toMap()),
      'vcenterNetwork': ?vcenterNetwork,
    };
  }

  factory VMwareClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterNetworkConfig(
      controlPlaneV2Config: map['controlPlaneV2Config'] == null ? null : (VMwareClusterNetworkConfigControlPlaneV2Config.fromMap((map['controlPlaneV2Config'] as Map).cast<String, dynamic>())).input(),
      dhcpIpConfig: map['dhcpIpConfig'] == null ? null : (VMwareClusterNetworkConfigDhcpIpConfig.fromMap((map['dhcpIpConfig'] as Map).cast<String, dynamic>())).input(),
      hostConfig: map['hostConfig'] == null ? null : (VMwareClusterNetworkConfigHostConfig.fromMap((map['hostConfig'] as Map).cast<String, dynamic>())).input(),
      podAddressCidrBlocks: ((map['podAddressCidrBlocks'] as List).cast<String>()).input(),
      serviceAddressCidrBlocks: ((map['serviceAddressCidrBlocks'] as List).cast<String>()).input(),
      staticIpConfig: map['staticIpConfig'] == null ? null : (VMwareClusterNetworkConfigStaticIpConfig.fromMap((map['staticIpConfig'] as Map).cast<String, dynamic>())).input(),
      vcenterNetwork: map['vcenterNetwork'] == null ? null : (map['vcenterNetwork'] as String).input(),
    );
  }
}

