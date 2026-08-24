// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsAuditSsh {
  /// Enable SSH command logging.
  final pulumi.Input<bool?>? commandLogging;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsAuditSsh].
  /// [commandLogging] Enable SSH command logging.
  const ZeroTrustGatewayPolicyRuleSettingsAuditSsh({
    this.commandLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandLogging': ?commandLogging,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsAuditSsh.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsAuditSsh(
      commandLogging: (() { final guardedValue = map['commandLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
