// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_central_server_load_balancer.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_central_server_virtual_machine.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer {
  /// The full name for the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetName;
  /// A `load_balancer` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerLoadBalancer>? loadBalancer;
  /// One or more `virtual_machine` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine>>? virtualMachines;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer].
  /// [availabilitySetName] The full name for the availability set. Changing this forces a new resource to be created.
  /// [loadBalancer] A `load_balancer` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachines] One or more `virtual_machine` blocks as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServer(
      availabilitySetName: map['availabilitySetName'] == null ? null : (map['availabilitySetName']! as String).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerLoadBalancer.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())).input(),
      virtualMachines: map['virtualMachines'] == null ? null : (pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine>(map['virtualMachines']!, (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesCentralServerVirtualMachine.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

