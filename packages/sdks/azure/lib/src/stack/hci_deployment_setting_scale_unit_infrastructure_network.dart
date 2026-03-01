// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_scale_unit_infrastructure_network_ip_pool.dart';

class HciDeploymentSettingScaleUnitInfrastructureNetwork {
  /// Whether DHCP is enabled for hosts and cluster IPs. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  ///
  /// > **Note:** If `dhcp_enabled` is set to `false`, the deployment will use static IPs. If set to `true`, the gateway and DNS servers are not required.
  final bool? dhcpEnabled;
  /// Specifies a list of IPv4 addresses of the DNS servers in your environment. Changing this forces a new Stack HCI Deployment Setting to be created.
  final List<String> dnsServers;
  /// Specifies the default gateway that should be used for the provided IP address space. It should be in the format of an IPv4 IP address. Changing this forces a new Stack HCI Deployment Setting to be created.
  final String gateway;
  /// One or more `ip_pool` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final List<HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool> ipPools;
  /// Specifies the subnet mask that matches the provided IP address space. Changing this forces a new Stack HCI Deployment Setting to be created.
  final String subnetMask;

  /// Creates a new [HciDeploymentSettingScaleUnitInfrastructureNetwork].
  /// [dhcpEnabled] Whether DHCP is enabled for hosts and cluster IPs. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [dnsServers] Specifies a list of IPv4 addresses of the DNS servers in your environment. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [gateway] Specifies the default gateway that should be used for the provided IP address space. It should be in the format of an IPv4 IP address. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [ipPools] One or more `ip_pool` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [subnetMask] Specifies the subnet mask that matches the provided IP address space. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitInfrastructureNetwork({
    this.dhcpEnabled,
    required this.dnsServers,
    required this.gateway,
    required this.ipPools,
    required this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpEnabled': ?dhcpEnabled,
      'dnsServers': dnsServers,
      'gateway': gateway,
      'ipPools': pulumi.Input.encodeList<HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool, Map<String, dynamic>>(ipPools, (value) => value.toMap()),
      'subnetMask': subnetMask,
    };
  }

  factory HciDeploymentSettingScaleUnitInfrastructureNetwork.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitInfrastructureNetwork(
      dhcpEnabled: map['dhcpEnabled'] == null ? null : map['dhcpEnabled'] as bool,
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      gateway: map['gateway'] as String,
      ipPools: pulumi.Input.decodeList<HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool>(map['ipPools'], (value) => HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool.fromMap((value as Map).cast<String, dynamic>())),
      subnetMask: map['subnetMask'] as String,
    );
  }
}

