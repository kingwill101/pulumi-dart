// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsQuarantine {
  /// Specify the types of files to sandbox.
  final pulumi.Input<List<String>> fileTypes;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsQuarantine].
  /// [fileTypes] Specify the types of files to sandbox.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsQuarantine({
    required this.fileTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileTypes': fileTypes,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsQuarantine.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsQuarantine(
      fileTypes: pulumi.Input.fromValue((map['fileTypes'] as List).cast<String>()),
    );
  }
}
