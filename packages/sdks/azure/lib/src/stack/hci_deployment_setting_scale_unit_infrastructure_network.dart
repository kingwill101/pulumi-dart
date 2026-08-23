// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_scale_unit_infrastructure_network_ip_pool.dart';

class HciDeploymentSettingScaleUnitInfrastructureNetwork {
  /// Whether DHCP is enabled for hosts and cluster IPs. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  ///
  /// &gt; **Note:** If `dhcpEnabled` is set to `false`, the deployment will use static IPs. If set to `true`, the gateway and DNS servers are not required.
  final pulumi.Input<bool>? dhcpEnabled;
  /// Specifies a list of IPv4 addresses of the DNS servers in your environment. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<String>> dnsServers;
  /// Specifies the default gateway that should be used for the provided IP address space. It should be in the format of an IPv4 IP address. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> gateway;
  /// One or more `ipPool` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool>> ipPools;
  /// Specifies the subnet mask that matches the provided IP address space. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> subnetMask;

  /// Creates a new [HciDeploymentSettingScaleUnitInfrastructureNetwork].
  /// [dhcpEnabled] Whether DHCP is enabled for hosts and cluster IPs. Possible values are `true` and `false`. defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [dnsServers] Specifies a list of IPv4 addresses of the DNS servers in your environment. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [gateway] Specifies the default gateway that should be used for the provided IP address space. It should be in the format of an IPv4 IP address. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [ipPools] One or more `ipPool` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [subnetMask] Specifies the subnet mask that matches the provided IP address space. Changing this forces a new Stack HCI Deployment Setting to be created.
  const HciDeploymentSettingScaleUnitInfrastructureNetwork({
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
      'ipPools': pulumi.Input.mapInputValue<List<HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool>, List<Map<String, dynamic>>>(ipPools, (value) => pulumi.Input.encodeList<HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetMask': subnetMask,
    };
  }

  factory HciDeploymentSettingScaleUnitInfrastructureNetwork.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitInfrastructureNetwork(
      dhcpEnabled: (() { final guardedValue = map['dhcpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsServers: pulumi.Input.fromValue((map['dnsServers'] as List).cast<String>()),
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      ipPools: pulumi.Input.fromValue(pulumi.Input.decodeList<HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool>(map['ipPools']!, (value) => HciDeploymentSettingScaleUnitInfrastructureNetworkIpPool.fromMap((value as Map).cast<String, dynamic>()))),
      subnetMask: pulumi.Input.fromValue(map['subnetMask'] as String),
    );
  }
}
