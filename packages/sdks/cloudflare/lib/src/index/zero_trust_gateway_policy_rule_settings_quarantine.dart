// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsQuarantine {
  /// Specify the types of files to sandbox.
  final pulumi.Input<List<String>?>? fileTypes;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsQuarantine].
  /// [fileTypes] Specify the types of files to sandbox.
  const ZeroTrustGatewayPolicyRuleSettingsQuarantine({
    this.fileTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileTypes': ?fileTypes,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsQuarantine.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsQuarantine(
      fileTypes: (() { final guardedValue = map['fileTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
