// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsForensicCopy {
  /// Enable sending the copy to storage.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsForensicCopy].
  /// [enabled] Enable sending the copy to storage.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsForensicCopy({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsForensicCopy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsForensicCopy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
