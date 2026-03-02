// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_sub_interface_ip_allocation_mode.dart';

class NetworkInterfaceSubInterface {
  /// An IPv4 internal IP address to assign to the instance for this subinterface. If specified, ip_allocation_mode should be set to ALLOCATE_IP.
  final pulumi.Input<String>? ipAddress;
  final pulumi.Input<NetworkInterfaceSubInterfaceIpAllocationMode>? ipAllocationMode;
  /// If specified, this subnetwork must belong to the same network as that of the network interface. If not specified the subnet of network interface will be used. If you specify this property, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  final pulumi.Input<String>? subnetwork;
  /// VLAN tag. Should match the VLAN(s) supported by the subnetwork to which this subinterface is connecting.
  final pulumi.Input<int>? vlan;

  /// Creates a new [NetworkInterfaceSubInterface].
  /// [ipAddress] An IPv4 internal IP address to assign to the instance for this subinterface. If specified, ip_allocation_mode should be set to ALLOCATE_IP.
  /// [ipAllocationMode] Optional.
  /// [subnetwork] If specified, this subnetwork must belong to the same network as that of the network interface. If not specified the subnet of network interface will be used. If you specify this property, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  /// [vlan] VLAN tag. Should match the VLAN(s) supported by the subnetwork to which this subinterface is connecting.
  NetworkInterfaceSubInterface({
    this.ipAddress,
    this.ipAllocationMode,
    this.subnetwork,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'ipAllocationMode': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceSubInterfaceIpAllocationMode, String>(ipAllocationMode, (value) => value.value),
      'subnetwork': ?subnetwork,
      'vlan': ?vlan,
    };
  }

  factory NetworkInterfaceSubInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceSubInterface(
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      ipAllocationMode: map['ipAllocationMode'] == null ? null : (NetworkInterfaceSubInterfaceIpAllocationMode.fromValue(map['ipAllocationMode'] as String)).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
      vlan: map['vlan'] == null ? null : (map['vlan'] as int).input(),
    );
  }
}

