// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_resource_names.dart';
import 'virtual_machine_resource_names.dart';

/// The full resource names object for central server layer resources.
class CentralServerFullResourceNames {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  final String? availabilitySetName;
  /// The resource names object for load balancer and related resources.
  final LoadBalancerResourceNames? loadBalancer;
  /// The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  final List<VirtualMachineResourceNames>? virtualMachines;

  /// Creates a new [CentralServerFullResourceNames].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  /// [loadBalancer] The resource names object for load balancer and related resources.
  /// [virtualMachines] The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  CentralServerFullResourceNames({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
      'virtualMachines': ?virtualMachines == null ? null : pulumi.Input.encodeList<VirtualMachineResourceNames, Map<String, dynamic>>(virtualMachines!, (value) => value.toMap()),
    };
  }

  factory CentralServerFullResourceNames.fromMap(Map<String, dynamic> map) {
    return CentralServerFullResourceNames(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      loadBalancer: map['loadBalancer'] == null ? null : LoadBalancerResourceNames.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Input.decodeList<VirtualMachineResourceNames>(map['virtualMachines'], (value) => VirtualMachineResourceNames.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

