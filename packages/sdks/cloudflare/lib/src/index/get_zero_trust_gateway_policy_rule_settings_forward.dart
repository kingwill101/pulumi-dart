// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsForward {
  /// Specify the public Worker ID of the target Worker.
  final pulumi.Input<String> workerId;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsForward].
  /// [workerId] Specify the public Worker ID of the target Worker.
  const GetZeroTrustGatewayPolicyRuleSettingsForward({
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerId': workerId,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsForward.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsForward(
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}
