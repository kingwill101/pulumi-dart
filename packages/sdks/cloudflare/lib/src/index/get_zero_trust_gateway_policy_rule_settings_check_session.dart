// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsCheckSession {
  /// Sets the required session freshness threshold. The API returns a normalized version of this value.
  final pulumi.Input<String> duration;
  /// Enable session enforcement.
  final pulumi.Input<bool> enforce;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsCheckSession].
  /// [duration] Sets the required session freshness threshold. The API returns a normalized version of this value.
  /// [enforce] Enable session enforcement.
  const GetZeroTrustGatewayPolicyRuleSettingsCheckSession({
    required this.duration,
    required this.enforce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enforce': enforce,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsCheckSession.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsCheckSession(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
    );
  }
}
