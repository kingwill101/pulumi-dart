// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion.dart';

class GetRegionSecurityPolicyRulePreconfiguredWafConfig {
  /// An exclusion to apply during preconfigured WAF evaluation.
  final pulumi.Input<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion>> exclusions;

  /// Creates a new [GetRegionSecurityPolicyRulePreconfiguredWafConfig].
  /// [exclusions] An exclusion to apply during preconfigured WAF evaluation.
  const GetRegionSecurityPolicyRulePreconfiguredWafConfig({
    required this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRulePreconfiguredWafConfig(
      exclusions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion>(map['exclusions']!, (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
