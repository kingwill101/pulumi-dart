// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsUntrustedCert {
  /// Defines the action performed when an untrusted certificate seen. The default action an error with HTTP code 526.
  /// Available values: "passThrough", "block", "error".
  final pulumi.Input<String> action;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsUntrustedCert].
  /// [action] Defines the action performed when an untrusted certificate seen. The default action an error with HTTP code 526.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsUntrustedCert({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsUntrustedCert.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsUntrustedCert(
      action: pulumi.Input.fromValue(map['action'] as String),
    );
  }
}
