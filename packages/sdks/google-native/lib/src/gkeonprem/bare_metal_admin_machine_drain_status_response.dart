// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_drained_machine_response.dart';
import 'bare_metal_admin_draining_machine_response.dart';

/// BareMetalAdminMachineDrainStatus represents the status of bare metal node machines that are undergoing drain operations.
class BareMetalAdminMachineDrainStatusResponse {
  /// The list of drained machines.
  final pulumi.Input<List<BareMetalAdminDrainedMachineResponse>> drainedMachines;
  /// The list of draning machines.
  final pulumi.Input<List<BareMetalAdminDrainingMachineResponse>> drainingMachines;

  /// Creates a new [BareMetalAdminMachineDrainStatusResponse].
  /// [drainedMachines] The list of drained machines.
  /// [drainingMachines] The list of draning machines.
  BareMetalAdminMachineDrainStatusResponse({
    required this.drainedMachines,
    required this.drainingMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainedMachines': pulumi.Input.mapInputValue<List<BareMetalAdminDrainedMachineResponse>, List<Map<String, dynamic>>>(drainedMachines, (value) => pulumi.Input.encodeList<BareMetalAdminDrainedMachineResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'drainingMachines': pulumi.Input.mapInputValue<List<BareMetalAdminDrainingMachineResponse>, List<Map<String, dynamic>>>(drainingMachines, (value) => pulumi.Input.encodeList<BareMetalAdminDrainingMachineResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalAdminMachineDrainStatusResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminMachineDrainStatusResponse(
      drainedMachines: pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminDrainedMachineResponse>(map['drainedMachines']!, (value) => BareMetalAdminDrainedMachineResponse.fromMap((value as Map).cast<String, dynamic>()))),
      drainingMachines: pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminDrainingMachineResponse>(map['drainingMachines']!, (value) => BareMetalAdminDrainingMachineResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

