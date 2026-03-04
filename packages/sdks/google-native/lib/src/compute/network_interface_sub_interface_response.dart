// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInterfaceSubInterfaceResponse {
  /// An IPv4 internal IP address to assign to the instance for this subinterface. If specified, ip_allocation_mode should be set to ALLOCATE_IP.
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> ipAllocationMode;

  /// If specified, this subnetwork must belong to the same network as that of the network interface. If not specified the subnet of network interface will be used. If you specify this property, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  final pulumi.Input<String> subnetwork;

  /// VLAN tag. Should match the VLAN(s) supported by the subnetwork to which this subinterface is connecting.
  final pulumi.Input<int> vlan;

  /// Creates a new [NetworkInterfaceSubInterfaceResponse].
  /// [ipAddress] An IPv4 internal IP address to assign to the instance for this subinterface. If specified, ip_allocation_mode should be set to ALLOCATE_IP.
  /// [ipAllocationMode] Required.
  /// [subnetwork] If specified, this subnetwork must belong to the same network as that of the network interface. If not specified the subnet of network interface will be used. If you specify this property, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  /// [vlan] VLAN tag. Should match the VLAN(s) supported by the subnetwork to which this subinterface is connecting.
  NetworkInterfaceSubInterfaceResponse({
    required this.ipAddress,
    required this.ipAllocationMode,
    required this.subnetwork,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ipAllocationMode': ipAllocationMode,
      'subnetwork': subnetwork,
      'vlan': vlan,
    };
  }

  factory NetworkInterfaceSubInterfaceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInterfaceSubInterfaceResponse(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ipAllocationMode: pulumi.Input.fromValue(
        map['ipAllocationMode'] as String,
      ),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      vlan: pulumi.Input.fromValue(map['vlan'] as int),
    );
  }
}
