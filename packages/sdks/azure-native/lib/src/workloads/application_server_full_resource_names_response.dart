// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_resource_names_response.dart';

/// The full resource names object for application layer resources. The number of entries in this list should be equal to the number VMs to be created for application layer.
class ApplicationServerFullResourceNamesResponse {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-App-AvSet.
  final pulumi.Input<String>? availabilitySetName;
  /// The list of virtual machine naming details.
  final pulumi.Input<List<VirtualMachineResourceNamesResponse>>? virtualMachines;

  /// Creates a new [ApplicationServerFullResourceNamesResponse].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-App-AvSet.
  /// [virtualMachines] The list of virtual machine naming details.
  ApplicationServerFullResourceNamesResponse({
    this.availabilitySetName,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineResourceNamesResponse>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<VirtualMachineResourceNamesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationServerFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationServerFullResourceNamesResponse(
      availabilitySetName: map['availabilitySetName'] == null ? null : (map['availabilitySetName']! as String).input(),
      virtualMachines: map['virtualMachines'] == null ? null : (pulumi.Input.decodeList<VirtualMachineResourceNamesResponse>(map['virtualMachines']!, (value) => VirtualMachineResourceNamesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

