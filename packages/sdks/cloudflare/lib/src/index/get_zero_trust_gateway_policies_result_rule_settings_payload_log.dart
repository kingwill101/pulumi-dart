// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsPayloadLog {
  /// Enable DLP payload logging for this rule.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsPayloadLog].
  /// [enabled] Enable DLP payload logging for this rule.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsPayloadLog({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsPayloadLog.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsPayloadLog(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
