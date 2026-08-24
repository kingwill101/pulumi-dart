// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsForensicCopy {
  /// Enable sending the copy to storage.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsForensicCopy].
  /// [enabled] Enable sending the copy to storage.
  const ZeroTrustGatewayPolicyRuleSettingsForensicCopy({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsForensicCopy.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsForensicCopy(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
