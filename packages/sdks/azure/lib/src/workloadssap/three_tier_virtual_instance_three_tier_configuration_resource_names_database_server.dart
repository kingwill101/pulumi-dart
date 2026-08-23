// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_database_server_load_balancer.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_database_server_virtual_machine.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer {
  /// The full name for the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetName;
  /// A `loadBalancer` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer>? loadBalancer;
  /// One or more `virtualMachine` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine>>? virtualMachines;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer].
  /// [availabilitySetName] The full name for the availability set. Changing this forces a new resource to be created.
  /// [loadBalancer] A `loadBalancer` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachines] One or more `virtualMachine` blocks as defined below. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer(
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine>(guardedValue, (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
