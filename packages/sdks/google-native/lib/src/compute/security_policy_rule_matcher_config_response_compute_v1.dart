// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleMatcherConfigResponseComputeV1 {
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final pulumi.Input<List<String>> srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatcherConfigResponseComputeV1].
  /// [srcIpRanges] CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  const SecurityPolicyRuleMatcherConfigResponseComputeV1({
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatcherConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigResponseComputeV1(
      srcIpRanges: pulumi.Input.fromValue((map['srcIpRanges'] as List).cast<String>()),
    );
  }
}
