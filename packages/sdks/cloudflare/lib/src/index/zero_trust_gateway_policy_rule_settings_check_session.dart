// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsCheckSession {
  /// Sets the required session freshness threshold. The API returns a normalized version of this value.
  final pulumi.Input<String?>? duration;
  /// Enable session enforcement.
  final pulumi.Input<bool?>? enforce;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsCheckSession].
  /// [duration] Sets the required session freshness threshold. The API returns a normalized version of this value.
  /// [enforce] Enable session enforcement.
  const ZeroTrustGatewayPolicyRuleSettingsCheckSession({
    this.duration,
    this.enforce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'enforce': ?enforce,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsCheckSession.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsCheckSession(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
