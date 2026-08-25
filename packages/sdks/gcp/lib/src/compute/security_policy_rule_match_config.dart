// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleMatchConfig {
  /// CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  final pulumi.Input<List<String>?>? srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatchConfig].
  /// [srcIpRanges] CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  const SecurityPolicyRuleMatchConfig({
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatchConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatchConfig(
      srcIpRanges: (() { final guardedValue = map['srcIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
