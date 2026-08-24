// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsAuditSsh {
  /// Enable SSH command logging.
  final pulumi.Input<bool> commandLogging;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsAuditSsh].
  /// [commandLogging] Enable SSH command logging.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsAuditSsh({
    required this.commandLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLogging': commandLogging,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsAuditSsh.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsAuditSsh(
      commandLogging: pulumi.Input.fromValue(map['commandLogging'] as bool),
    );
  }
}
