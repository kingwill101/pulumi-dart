// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_response_compute_beta.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta>> exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': pulumi.Input.mapInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigResponseComputeBeta(
      exclusions: (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta>(map['exclusions'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

