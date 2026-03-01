// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_resource_names_response.dart';
import 'virtual_machine_resource_names_response.dart';

/// The full resource names object for central server layer resources.
class CentralServerFullResourceNamesResponse {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  final String? availabilitySetName;
  /// The resource names object for load balancer and related resources.
  final LoadBalancerResourceNamesResponse? loadBalancer;
  /// The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  final List<VirtualMachineResourceNamesResponse>? virtualMachines;

  /// Creates a new [CentralServerFullResourceNamesResponse].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-ASCS-AvSet.
  /// [loadBalancer] The resource names object for load balancer and related resources.
  /// [virtualMachines] The list of names for all ASCS virtual machines to be deployed. The number of entries in this list should be equal to the number VMs to be created for ASCS layer. At maximum, there can be two virtual machines at this layer: ASCS and ERS.
  CentralServerFullResourceNamesResponse({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
      'virtualMachines': ?virtualMachines == null ? null : pulumi.Input.encodeList<VirtualMachineResourceNamesResponse, Map<String, dynamic>>(virtualMachines!, (value) => value.toMap()),
    };
  }

  factory CentralServerFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return CentralServerFullResourceNamesResponse(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      loadBalancer: map['loadBalancer'] == null ? null : LoadBalancerResourceNamesResponse.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Input.decodeList<VirtualMachineResourceNamesResponse>(map['virtualMachines'], (value) => VirtualMachineResourceNamesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

