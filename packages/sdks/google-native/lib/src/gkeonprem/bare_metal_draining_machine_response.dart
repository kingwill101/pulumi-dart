// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a machine that is currently draining.
class BareMetalDrainingMachineResponse {
  /// Draining machine IP address.
  final pulumi.Input<String> nodeIp;
  /// The count of pods yet to drain.
  final pulumi.Input<int> podCount;

  /// Creates a new [BareMetalDrainingMachineResponse].
  /// [nodeIp] Draining machine IP address.
  /// [podCount] The count of pods yet to drain.
  const BareMetalDrainingMachineResponse({
    required this.nodeIp,
    required this.podCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeIp': nodeIp,
      'podCount': podCount,
    };
  }

  factory BareMetalDrainingMachineResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalDrainingMachineResponse(
      nodeIp: pulumi.Input.fromValue(map['nodeIp'] as String),
      podCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['podCount'])),
    );
  }
}
