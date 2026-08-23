// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_response_compute_v1.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1 {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1>> exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  const SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': pulumi.Input.mapInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigResponseComputeV1(
      exclusions: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1>(map['exclusions']!, (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
