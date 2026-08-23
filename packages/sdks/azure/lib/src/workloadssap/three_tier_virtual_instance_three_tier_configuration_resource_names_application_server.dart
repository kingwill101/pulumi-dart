// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_application_server_virtual_machine.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer {
  /// The full name for the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetName;
  /// One or more `virtualMachine` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine>>? virtualMachines;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer].
  /// [availabilitySetName] The full name for the availability set. Changing this forces a new resource to be created.
  /// [virtualMachines] One or more `virtualMachine` blocks as defined below. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer({
    this.availabilitySetName,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'virtualMachines': ?pulumi.Input.mapOptionalInputValue<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer(
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachines: (() { final guardedValue = map['virtualMachines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine>(guardedValue, (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
