// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStandbyPolicyResponseComputeBeta {
  final pulumi.Input<int> initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final pulumi.Input<String> mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicyResponseComputeBeta].
  /// [initialDelaySec] Required.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  InstanceGroupManagerStandbyPolicyResponseComputeBeta({
    required this.initialDelaySec,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'initialDelaySec': initialDelaySec, 'mode': mode};
  }

  factory InstanceGroupManagerStandbyPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerStandbyPolicyResponseComputeBeta(
      initialDelaySec: pulumi.Input.fromValue(map['initialDelaySec'] as int),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
