// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_application_server_virtual_machine.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer {
  /// The full name for the availability set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetName;
  /// One or more `virtual_machine` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine>>? virtualMachines;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer].
  /// [availabilitySetName] The full name for the availability set. Changing this forces a new resource to be created.
  /// [virtualMachines] One or more `virtual_machine` blocks as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServer({
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
      availabilitySetName: map['availabilitySetName'] == null ? null : (map['availabilitySetName'] as String).input(),
      virtualMachines: map['virtualMachines'] == null ? null : (pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine>(map['virtualMachines'], (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesApplicationServerVirtualMachine.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

