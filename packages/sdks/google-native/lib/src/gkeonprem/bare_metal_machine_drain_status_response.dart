// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_drained_machine_response.dart';
import 'bare_metal_draining_machine_response.dart';

/// Represents the status of node machines that are undergoing drain operations.
class BareMetalMachineDrainStatusResponse {
  /// The list of drained machines.
  final pulumi.Input<List<BareMetalDrainedMachineResponse>> drainedMachines;
  /// The list of draning machines.
  final pulumi.Input<List<BareMetalDrainingMachineResponse>> drainingMachines;

  /// Creates a new [BareMetalMachineDrainStatusResponse].
  /// [drainedMachines] The list of drained machines.
  /// [drainingMachines] The list of draning machines.
  BareMetalMachineDrainStatusResponse({
    required this.drainedMachines,
    required this.drainingMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainedMachines': pulumi.Input.mapInputValue<List<BareMetalDrainedMachineResponse>, List<Map<String, dynamic>>>(drainedMachines, (value) => pulumi.Input.encodeList<BareMetalDrainedMachineResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'drainingMachines': pulumi.Input.mapInputValue<List<BareMetalDrainingMachineResponse>, List<Map<String, dynamic>>>(drainingMachines, (value) => pulumi.Input.encodeList<BareMetalDrainingMachineResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalMachineDrainStatusResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalMachineDrainStatusResponse(
      drainedMachines: (pulumi.Input.decodeList<BareMetalDrainedMachineResponse>(map['drainedMachines'], (value) => BareMetalDrainedMachineResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      drainingMachines: (pulumi.Input.decodeList<BareMetalDrainingMachineResponse>(map['drainingMachines'], (value) => BareMetalDrainingMachineResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

