// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsForward {
  /// Specify the public Worker ID of the target Worker.
  final pulumi.Input<String> workerId;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsForward].
  /// [workerId] Specify the public Worker ID of the target Worker.
  const ZeroTrustGatewayPolicyRuleSettingsForward({
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerId': workerId,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsForward.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsForward(
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}
