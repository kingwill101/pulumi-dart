// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsAuditSsh {
  /// Enable SSH command logging.
  final pulumi.Input<bool> commandLogging;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsAuditSsh].
  /// [commandLogging] Enable SSH command logging.
  const GetZeroTrustGatewayPolicyRuleSettingsAuditSsh({
    required this.commandLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLogging': commandLogging,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsAuditSsh.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsAuditSsh(
      commandLogging: pulumi.Input.fromValue(map['commandLogging'] as bool),
    );
  }
}
