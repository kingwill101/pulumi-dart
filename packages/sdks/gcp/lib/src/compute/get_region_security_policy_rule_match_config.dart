// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionSecurityPolicyRuleMatchConfig {
  /// CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  final pulumi.Input<List<String>> srcIpRanges;

  /// Creates a new [GetRegionSecurityPolicyRuleMatchConfig].
  /// [srcIpRanges] CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  const GetRegionSecurityPolicyRuleMatchConfig({
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': srcIpRanges,
    };
  }

  factory GetRegionSecurityPolicyRuleMatchConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleMatchConfig(
      srcIpRanges: pulumi.Input.fromValue((map['srcIpRanges'] as List).cast<String>()),
    );
  }
}

