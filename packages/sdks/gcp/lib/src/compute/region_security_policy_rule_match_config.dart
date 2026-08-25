// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionSecurityPolicyRuleMatchConfig {
  /// CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  final pulumi.Input<List<String>?>? srcIpRanges;

  /// Creates a new [RegionSecurityPolicyRuleMatchConfig].
  /// [srcIpRanges] CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  const RegionSecurityPolicyRuleMatchConfig({
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory RegionSecurityPolicyRuleMatchConfig.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleMatchConfig(
      srcIpRanges: (() { final guardedValue = map['srcIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
