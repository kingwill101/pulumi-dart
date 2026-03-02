// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_resource_names_response.dart';

/// The resource names object for virtual machine and related resources.
class VirtualMachineResourceNamesResponse {
  /// The full resource names for virtual machine data disks. This is a dictionary containing list of names of data disks per volume. Currently supported volumes for database layer are ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os', 'backup']. For application and cs layers, only 'default' volume is supported
  final pulumi.Input<Map<String, List<String>>>? dataDiskNames;
  /// The full name for virtual-machine's host (computer name). Currently, ACSS only supports host names which are less than or equal to 13 characters long. If this value is not provided, vmName will be used as host name.
  final pulumi.Input<String>? hostName;
  /// The list of network interface name objects for the selected virtual machine. Currently, only one network interface is supported per virtual machine.
  final pulumi.Input<List<NetworkInterfaceResourceNamesResponse>>? networkInterfaces;
  /// The full name for OS disk attached to the VM. If this value is not provided, it will be named by ARM as per its default naming standards (prefixed with vm name). There is only one OS disk attached per Virtual Machine.
  final pulumi.Input<String>? osDiskName;
  /// The full name for virtual machine. The length of this field can be upto 64 characters. If name is not provided, service uses a default name based on the deployment type. For SingleServer, default name is {SID}vm. In case of HA-AvZone systems, default name will be {SID}{app/ascs/db}z{a/b}vm with an incrementor at the end in case of more than 1 vm per layer. For distributed and HA-AvSet systems, default name will be {SID}{app/ascs/db}vm with an incrementor at the end in case of more than 1 vm per layer.
  final pulumi.Input<String>? vmName;

  /// Creates a new [VirtualMachineResourceNamesResponse].
  /// [dataDiskNames] The full resource names for virtual machine data disks. This is a dictionary containing list of names of data disks per volume. Currently supported volumes for database layer are ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os', 'backup']. For application and cs layers, only 'default' volume is supported
  /// [hostName] The full name for virtual-machine's host (computer name). Currently, ACSS only supports host names which are less than or equal to 13 characters long. If this value is not provided, vmName will be used as host name.
  /// [networkInterfaces] The list of network interface name objects for the selected virtual machine. Currently, only one network interface is supported per virtual machine.
  /// [osDiskName] The full name for OS disk attached to the VM. If this value is not provided, it will be named by ARM as per its default naming standards (prefixed with vm name). There is only one OS disk attached per Virtual Machine.
  /// [vmName] The full name for virtual machine. The length of this field can be upto 64 characters. If name is not provided, service uses a default name based on the deployment type. For SingleServer, default name is {SID}vm. In case of HA-AvZone systems, default name will be {SID}{app/ascs/db}z{a/b}vm with an incrementor at the end in case of more than 1 vm per layer. For distributed and HA-AvSet systems, default name will be {SID}{app/ascs/db}vm with an incrementor at the end in case of more than 1 vm per layer.
  VirtualMachineResourceNamesResponse({
    this.dataDiskNames,
    this.hostName,
    this.networkInterfaces,
    this.osDiskName,
    this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskNames': ?dataDiskNames,
      'hostName': ?hostName,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceResourceNamesResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResourceNamesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskName': ?osDiskName,
      'vmName': ?vmName,
    };
  }

  factory VirtualMachineResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineResourceNamesResponse(
      dataDiskNames: map['dataDiskNames'] == null ? null : ((map['dataDiskNames'] as Map).cast<String, List<String>>()).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceResourceNamesResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResourceNamesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osDiskName: map['osDiskName'] == null ? null : (map['osDiskName'] as String).input(),
      vmName: map['vmName'] == null ? null : (map['vmName'] as String).input(),
    );
  }
}

