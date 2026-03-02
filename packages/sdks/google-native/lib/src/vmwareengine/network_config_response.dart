// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network configuration in the consumer project with which the peering has to be done.
class NetworkConfigResponse {
  /// DNS Server IP of the Private Cloud. All DNS queries can be forwarded to this address for name resolution of Private Cloud's management entities like vCenter, NSX-T Manager and ESXi hosts.
  final pulumi.Input<String> dnsServerIp;
  /// Management CIDR used by VMware management appliances.
  final pulumi.Input<String> managementCidr;
  /// The IP address layout version of the management IP address range. Possible versions include: * `managementIpAddressLayoutVersion=1`: Indicates the legacy IP address layout used by some existing private clouds. This is no longer supported for new private clouds as it does not support all features. * `managementIpAddressLayoutVersion=2`: Indicates the latest IP address layout used by all newly created private clouds. This version supports all current features.
  final pulumi.Input<int> managementIpAddressLayoutVersion;
  /// Optional. The relative resource name of the VMware Engine network attached to the private cloud. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final pulumi.Input<String> vmwareEngineNetwork;
  /// The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  final pulumi.Input<String> vmwareEngineNetworkCanonical;

  /// Creates a new [NetworkConfigResponse].
  /// [dnsServerIp] DNS Server IP of the Private Cloud. All DNS queries can be forwarded to this address for name resolution of Private Cloud's management entities like vCenter, NSX-T Manager and ESXi hosts.
  /// [managementCidr] Management CIDR used by VMware management appliances.
  /// [managementIpAddressLayoutVersion] The IP address layout version of the management IP address range. Possible versions include: * `managementIpAddressLayoutVersion=1`: Indicates the legacy IP address layout used by some existing private clouds. This is no longer supported for new private clouds as it does not support all features. * `managementIpAddressLayoutVersion=2`: Indicates the latest IP address layout used by all newly created private clouds. This version supports all current features.
  /// [vmwareEngineNetwork] Optional. The relative resource name of the VMware Engine network attached to the private cloud. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  /// [vmwareEngineNetworkCanonical] The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  NetworkConfigResponse({
    required this.dnsServerIp,
    required this.managementCidr,
    required this.managementIpAddressLayoutVersion,
    required this.vmwareEngineNetwork,
    required this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServerIp': dnsServerIp,
      'managementCidr': managementCidr,
      'managementIpAddressLayoutVersion': managementIpAddressLayoutVersion,
      'vmwareEngineNetwork': vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      dnsServerIp: (map['dnsServerIp'] as String).input(),
      managementCidr: (map['managementCidr'] as String).input(),
      managementIpAddressLayoutVersion: (map['managementIpAddressLayoutVersion'] as int).input(),
      vmwareEngineNetwork: (map['vmwareEngineNetwork'] as String).input(),
      vmwareEngineNetworkCanonical: (map['vmwareEngineNetworkCanonical'] as String).input(),
    );
  }
}

