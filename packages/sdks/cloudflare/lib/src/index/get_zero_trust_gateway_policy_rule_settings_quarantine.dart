// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsQuarantine {
  /// Specify the types of files to sandbox.
  final pulumi.Input<List<String>> fileTypes;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsQuarantine].
  /// [fileTypes] Specify the types of files to sandbox.
  const GetZeroTrustGatewayPolicyRuleSettingsQuarantine({
    required this.fileTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileTypes': fileTypes,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsQuarantine.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsQuarantine(
      fileTypes: pulumi.Input.fromValue((map['fileTypes'] as List).cast<String>()),
    );
  }
}
