// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleMatcherConfigResponseComputeV1 {
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final List<String> srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatcherConfigResponseComputeV1].
  /// [srcIpRanges] CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  SecurityPolicyRuleMatcherConfigResponseComputeV1({
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatcherConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigResponseComputeV1(
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}

