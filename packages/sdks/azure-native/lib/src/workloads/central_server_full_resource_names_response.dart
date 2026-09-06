// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_resource_names_response.dart';
import 'virtual_machine_resource_names_response.dart';

/// The full resource names object for central server layer resources.
class CentralServerFullResourceNamesResponse {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  final pulumi.Input<String?>? availabilitySetName;
  /// The resource names object for load balancer and related resources.
  final pulumi.Input<LoadBalancerResourceNamesResponse?>? loadBalancer;
  /// The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  final pulumi.Input<List<VirtualMachineResourceNamesResponse>?>? virtualMachines;

  /// Creates a new [CentralServerFullResourceNamesResponse].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  /// [loadBalancer] The resource names object for load balancer and related resources.
  /// [virtualMachines] The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  const CentralServerFullResourceNamesResponse({
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

  factory CentralServerFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return CentralServerFullResourceNamesResponse(
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerResourceNamesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineResourceNamesResponse>(guardedValue, (value) => VirtualMachineResourceNamesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
