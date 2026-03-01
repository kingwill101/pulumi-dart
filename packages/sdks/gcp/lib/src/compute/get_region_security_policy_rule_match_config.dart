// ignore_for_file: unused_element, unnecessary_cast


class GetRegionSecurityPolicyRuleMatchConfig {
  /// CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  final List<String> srcIpRanges;

  /// Creates a new [GetRegionSecurityPolicyRuleMatchConfig].
  /// [srcIpRanges] CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  GetRegionSecurityPolicyRuleMatchConfig({
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': srcIpRanges,
    };
  }

  factory GetRegionSecurityPolicyRuleMatchConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleMatchConfig(
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}

