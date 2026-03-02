// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_database_server_virtual_machine_data_disk.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine {
  /// One or more `data_disk` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk>>? dataDisks;
  /// The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostName;
  /// A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? networkInterfaceNames;
  /// The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? osDiskName;
  /// The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine].
  /// [dataDisks] One or more `data_disk` blocks as defined below. Changing this forces a new resource to be created.
  /// [hostName] The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  /// [networkInterfaceNames] A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  /// [osDiskName] The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  /// [virtualMachineName] The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine({
    this.dataDisks,
    this.hostName,
    this.networkInterfaceNames,
    this.osDiskName,
    this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostName': ?hostName,
      'networkInterfaceNames': ?networkInterfaceNames,
      'osDiskName': ?osDiskName,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk>(map['dataDisks'], (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachineDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      networkInterfaceNames: map['networkInterfaceNames'] == null ? null : ((map['networkInterfaceNames'] as List).cast<String>()).input(),
      osDiskName: map['osDiskName'] == null ? null : (map['osDiskName'] as String).input(),
      virtualMachineName: map['virtualMachineName'] == null ? null : (map['virtualMachineName'] as String).input(),
    );
  }
}

