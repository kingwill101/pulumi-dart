// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStandbyPolicyResponse {
  final pulumi.Input<int> initialDelaySec;
  /// Defines behaviour of using instances from standby pool to resize MIG.
  final pulumi.Input<String> mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicyResponse].
  /// [initialDelaySec] Required.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  const InstanceGroupManagerStandbyPolicyResponse({
    required this.initialDelaySec,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelaySec': initialDelaySec,
      'mode': mode,
    };
  }

  factory InstanceGroupManagerStandbyPolicyResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicyResponse(
      initialDelaySec: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['initialDelaySec'])),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
