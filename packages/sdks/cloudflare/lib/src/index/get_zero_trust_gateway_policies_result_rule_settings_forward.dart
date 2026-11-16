// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsForward {
  /// Specify the public Worker ID of the target Worker.
  final pulumi.Input<String> workerId;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsForward].
  /// [workerId] Specify the public Worker ID of the target Worker.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsForward({
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerId': workerId,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsForward.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsForward(
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}
