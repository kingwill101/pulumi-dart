// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleMatcherConfigComputeV1 {
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final pulumi.Input<List<String>>? srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatcherConfigComputeV1].
  /// [srcIpRanges] CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  SecurityPolicyRuleMatcherConfigComputeV1({
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatcherConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigComputeV1(
      srcIpRanges: (() { final guardedValue = map['srcIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

