// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_node_virtual_instance_single_server_configuration_virtual_machine_resource_names_data_disk.dart';

class SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames {
  /// (Optional) One or more `data_disk` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk>>? dataDisks;
  /// The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostName;
  /// A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? networkInterfaceNames;
  /// The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? osDiskName;
  /// The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineName;

  /// Creates a new [SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames].
  /// [dataDisks] (Optional) One or more `data_disk` blocks as defined below. Changing this forces a new resource to be created.
  /// [hostName] The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
  /// [networkInterfaceNames] A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
  /// [osDiskName] The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
  /// [virtualMachineName] The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
  SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames({
    this.dataDisks,
    this.hostName,
    this.networkInterfaceNames,
    this.osDiskName,
    this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostName': ?hostName,
      'networkInterfaceNames': ?networkInterfaceNames,
      'osDiskName': ?osDiskName,
      'virtualMachineName': ?virtualMachineName,
    };
  }

  factory SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNames(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk>(map['dataDisks']!, (value) => SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineResourceNamesDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      networkInterfaceNames: map['networkInterfaceNames'] == null ? null : ((map['networkInterfaceNames']! as List).cast<String>()).input(),
      osDiskName: map['osDiskName'] == null ? null : (map['osDiskName']! as String).input(),
      virtualMachineName: map['virtualMachineName'] == null ? null : (map['virtualMachineName']! as String).input(),
    );
  }
}

