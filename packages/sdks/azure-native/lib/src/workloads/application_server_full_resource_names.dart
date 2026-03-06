// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_resource_names.dart';

/// The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
class ApplicationServerFullResourceNames {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-App-AvSet.
  final pulumi.Input<String>? availabilitySetName;
  /// The list of virtual machine naming details.
  final pulumi.Input<List<VirtualMachineResourceNames>>? virtualMachines;

  /// Creates a new [ApplicationServerFullResourceNames].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-App-AvSet.
  /// [virtualMachines] The list of virtual machine naming details.
  const ApplicationServerFullResourceNames({
    this.availabilitySetName,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineResourceNames>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<VirtualMachineResourceNames, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationServerFullResourceNames.fromMap(Map<String, dynamic> map) {
    return ApplicationServerFullResourceNames(
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineResourceNames>(guardedValue, (value) => VirtualMachineResourceNames.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

