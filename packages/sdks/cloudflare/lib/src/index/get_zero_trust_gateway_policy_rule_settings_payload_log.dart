// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsPayloadLog {
  /// Enable DLP payload logging for this rule.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsPayloadLog].
  /// [enabled] Enable DLP payload logging for this rule.
  const GetZeroTrustGatewayPolicyRuleSettingsPayloadLog({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsPayloadLog.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsPayloadLog(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
