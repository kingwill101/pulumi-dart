// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_resource_names_response.dart';
import 'virtual_machine_resource_names_response.dart';

/// The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
class DatabaseServerFullResourceNamesResponse {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-DB-AvSet.
  final pulumi.Input<String?>? availabilitySetName;
  /// The resource names object for load balancer and related resources.
  final pulumi.Input<LoadBalancerResourceNamesResponse?>? loadBalancer;
  /// The list of virtual machine naming details.
  final pulumi.Input<List<VirtualMachineResourceNamesResponse>?>? virtualMachines;

  /// Creates a new [DatabaseServerFullResourceNamesResponse].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-DB-AvSet.
  /// [loadBalancer] The resource names object for load balancer and related resources.
  /// [virtualMachines] The list of virtual machine naming details.
  const DatabaseServerFullResourceNamesResponse({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<LoadBalancerResourceNamesResponse, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineResourceNamesResponse>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<VirtualMachineResourceNamesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseServerFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseServerFullResourceNamesResponse(
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerResourceNamesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineResourceNamesResponse>(guardedValue, (value) => VirtualMachineResourceNamesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
