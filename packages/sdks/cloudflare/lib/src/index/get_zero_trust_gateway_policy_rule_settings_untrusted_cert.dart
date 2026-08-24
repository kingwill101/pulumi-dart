// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert {
  /// Defines the action performed when an untrusted certificate seen. The default action an error with HTTP code 526.
  /// Available values: "passThrough", "block", "error".
  final pulumi.Input<String> action;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert].
  /// [action] Defines the action performed when an untrusted certificate seen. The default action an error with HTTP code 526.
  const GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsUntrustedCert(
      action: pulumi.Input.fromValue(map['action'] as String),
    );
  }
}
