// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsCheckSession {
  /// Sets the required session freshness threshold. The API returns a normalized version of this value.
  final pulumi.Input<String> duration;
  /// Enable session enforcement.
  final pulumi.Input<bool> enforce;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsCheckSession].
  /// [duration] Sets the required session freshness threshold. The API returns a normalized version of this value.
  /// [enforce] Enable session enforcement.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsCheckSession({
    required this.duration,
    required this.enforce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enforce': enforce,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsCheckSession.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsCheckSession(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
    );
  }
}
