// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a machine that is currently drained.
class BareMetalDrainedMachineResponse {
  /// Drained machine IP address.
  final pulumi.Input<String> nodeIp;

  /// Creates a new [BareMetalDrainedMachineResponse].
  /// [nodeIp] Drained machine IP address.
  const BareMetalDrainedMachineResponse({
    required this.nodeIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeIp': nodeIp,
    };
  }

  factory BareMetalDrainedMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalDrainedMachineResponse(
      nodeIp: pulumi.Input.fromValue(map['nodeIp'] as String),
    );
  }
}

