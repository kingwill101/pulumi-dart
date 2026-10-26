// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminDrainingMachine represents the machines that are currently draining.
class BareMetalAdminDrainingMachineResponse {
  /// Draining machine IP address.
  final pulumi.Input<String> nodeIp;
  /// The count of pods yet to drain.
  final pulumi.Input<int> podCount;

  /// Creates a new [BareMetalAdminDrainingMachineResponse].
  /// [nodeIp] Draining machine IP address.
  /// [podCount] The count of pods yet to drain.
  const BareMetalAdminDrainingMachineResponse({
    required this.nodeIp,
    required this.podCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeIp': nodeIp,
      'podCount': podCount,
    };
  }

  factory BareMetalAdminDrainingMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminDrainingMachineResponse(
      nodeIp: pulumi.Input.fromValue(map['nodeIp'] as String),
      podCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['podCount'])),
    );
  }
}
