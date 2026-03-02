// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_machine_drain_status_response.dart';

/// Represents the maintenance status of the bare metal user cluster.
class BareMetalMaintenanceStatusResponse {
  /// The maintenance status of node machines.
  final pulumi.Input<BareMetalMachineDrainStatusResponse> machineDrainStatus;

  /// Creates a new [BareMetalMaintenanceStatusResponse].
  /// [machineDrainStatus] The maintenance status of node machines.
  BareMetalMaintenanceStatusResponse({
    required this.machineDrainStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineDrainStatus': pulumi.Input.mapInputValue<BareMetalMachineDrainStatusResponse, Map<String, dynamic>>(machineDrainStatus, (value) => value.toMap()),
    };
  }

  factory BareMetalMaintenanceStatusResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalMaintenanceStatusResponse(
      machineDrainStatus: (BareMetalMachineDrainStatusResponse.fromMap((map['machineDrainStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

