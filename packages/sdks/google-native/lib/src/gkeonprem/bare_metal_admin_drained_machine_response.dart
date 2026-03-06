// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminDrainedMachine represents the machines that are drained.
class BareMetalAdminDrainedMachineResponse {
  /// Drained machine IP address.
  final pulumi.Input<String> nodeIp;

  /// Creates a new [BareMetalAdminDrainedMachineResponse].
  /// [nodeIp] Drained machine IP address.
  const BareMetalAdminDrainedMachineResponse({
    required this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeIp': nodeIp,
    };
  }

  factory BareMetalAdminDrainedMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminDrainedMachineResponse(
      nodeIp: pulumi.Input.fromValue(map['nodeIp'] as String),
    );
  }
}

