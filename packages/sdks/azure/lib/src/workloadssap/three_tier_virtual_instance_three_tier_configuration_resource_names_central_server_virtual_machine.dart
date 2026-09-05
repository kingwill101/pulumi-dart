// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_central_server_virtual_machine_data_disk.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine {
  /// One or more `dataDisk` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk>?>? dataDisks;
  /// The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? hostName;
  /// A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? networkInterfaceNames;
  /// The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? osDiskName;
  /// The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? virtualMachineName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine].
  /// [dataDisks] One or more `dataDisk` blocks as defined below. Changing this forces a new resource to be created.
  /// [hostName] The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  /// [networkInterfaceNames] A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  /// [osDiskName] The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  /// [virtualMachineName] The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine({
    this.dataDisks,
    this.hostName,
    this.networkInterfaceNames,
    this.osDiskName,
    this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostName': ?hostName,
      'networkInterfaceNames': ?networkInterfaceNames,
      'osDiskName': ?osDiskName,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine(
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk>(guardedValue, (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachineDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceNames: (() { final guardedValue = map['networkInterfaceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      osDiskName: (() { final guardedValue = map['osDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineName: (() { final guardedValue = map['virtualMachineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
