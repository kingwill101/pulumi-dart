// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_resource_names.dart';
import 'virtual_machine_resource_names.dart';

/// The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
class DatabaseServerFullResourceNames {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-DB-AvSet.
  final pulumi.Input<String>? availabilitySetName;
  /// The resource names object for load balancer and related resources.
  final pulumi.Input<LoadBalancerResourceNames>? loadBalancer;
  /// The list of virtual machine naming details.
  final pulumi.Input<List<VirtualMachineResourceNames>>? virtualMachines;

  /// Creates a new [DatabaseServerFullResourceNames].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-DB-AvSet.
  /// [loadBalancer] The resource names object for load balancer and related resources.
  /// [virtualMachines] The list of virtual machine naming details.
  DatabaseServerFullResourceNames({
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

  factory DatabaseServerFullResourceNames.fromMap(Map<String, dynamic> map) {
    return DatabaseServerFullResourceNames(
      availabilitySetName: map['availabilitySetName'] == null ? null : (map['availabilitySetName']! as String).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (LoadBalancerResourceNames.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())).input(),
      virtualMachines: map['virtualMachines'] == null ? null : (pulumi.Input.decodeList<VirtualMachineResourceNames>(map['virtualMachines']!, (value) => VirtualMachineResourceNames.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

