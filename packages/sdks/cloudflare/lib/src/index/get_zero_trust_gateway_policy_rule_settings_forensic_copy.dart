// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsForensicCopy {
  /// Enable sending the copy to storage.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsForensicCopy].
  /// [enabled] Enable sending the copy to storage.
  const GetZeroTrustGatewayPolicyRuleSettingsForensicCopy({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsForensicCopy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsForensicCopy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
