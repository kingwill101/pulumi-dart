// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsPayloadLog {
  /// Enable DLP payload logging for this rule.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsPayloadLog].
  /// [enabled] Enable DLP payload logging for this rule.
  const ZeroTrustGatewayPolicyRuleSettingsPayloadLog({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsPayloadLog.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsPayloadLog(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
