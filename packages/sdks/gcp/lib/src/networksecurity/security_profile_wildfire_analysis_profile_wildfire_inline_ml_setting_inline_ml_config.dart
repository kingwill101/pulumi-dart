// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig {
  /// The action to take for a file type.
  /// Possible values are: `DISABLE`, `ALERT`, `ENABLE`.
  final pulumi.Input<String> action;
  /// The file type to match. For allowed values, see [API docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.securityProfiles#inlinemlfiletype)
  final pulumi.Input<String> fileType;

  /// Creates a new [SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig].
  /// [action] The action to take for a file type.
  /// [fileType] The file type to match. For allowed values, see [API docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.securityProfiles#inlinemlfiletype)
  const SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig({
    required this.action,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'fileType': fileType,
    };
  }

  factory SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfileWildfireInlineMlSettingInlineMlConfig(
      action: pulumi.Input.fromValue(map['action'] as String),
      fileType: pulumi.Input.fromValue(map['fileType'] as String),
    );
  }
}
