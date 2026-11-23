// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileWildfireAnalysisProfileWildfireSubmissionRuleCustomFileTypes {
  /// The file types to match for a rule. For allowed values, see [API docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.securityProfiles#wildfireinlinecloudanalysisrule).
  final pulumi.Input<List<String>> fileTypes;

  /// Creates a new [SecurityProfileWildfireAnalysisProfileWildfireSubmissionRuleCustomFileTypes].
  /// [fileTypes] The file types to match for a rule. For allowed values, see [API docs](https://docs.cloud.google.com/firewall/docs/reference/network-security/rest/v1beta1/organizations.locations.securityProfiles#wildfireinlinecloudanalysisrule).
  const SecurityProfileWildfireAnalysisProfileWildfireSubmissionRuleCustomFileTypes({
    required this.fileTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileTypes': fileTypes,
    };
  }

  factory SecurityProfileWildfireAnalysisProfileWildfireSubmissionRuleCustomFileTypes.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfileWildfireSubmissionRuleCustomFileTypes(
      fileTypes: pulumi.Input.fromValue((map['fileTypes'] as List).cast<String>()),
    );
  }
}
