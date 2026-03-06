// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_resource_names.dart';
import 'virtual_machine_resource_names.dart';

/// The full resource names object for central server layer resources.
class CentralServerFullResourceNames {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  final pulumi.Input<String>? availabilitySetName;
  /// The resource names object for load balancer and related resources.
  final pulumi.Input<LoadBalancerResourceNames>? loadBalancer;
  /// The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  final pulumi.Input<List<VirtualMachineResourceNames>>? virtualMachines;

  /// Creates a new [CentralServerFullResourceNames].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  /// [loadBalancer] The resource names object for load balancer and related resources.
  /// [virtualMachines] The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  const CentralServerFullResourceNames({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<LoadBalancerResourceNames, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineResourceNames>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<VirtualMachineResourceNames, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CentralServerFullResourceNames.fromMap(Map<String, dynamic> map) {
    return CentralServerFullResourceNames(
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerResourceNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineResourceNames>(guardedValue, (value) => VirtualMachineResourceNames.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

