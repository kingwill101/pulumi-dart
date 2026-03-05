// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_preconfigured_waf_config_exclusion.dart';

class RegionSecurityPolicyRulePreconfiguredWafConfig {
  /// An exclusion to apply during preconfigured WAF evaluation.
  /// Structure is documented below.
  final pulumi.Input<List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion>>? exclusions;

  /// Creates a new [RegionSecurityPolicyRulePreconfiguredWafConfig].
  /// [exclusions] An exclusion to apply during preconfigured WAF evaluation.
  RegionSecurityPolicyRulePreconfiguredWafConfig({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRulePreconfiguredWafConfig(
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionSecurityPolicyRulePreconfiguredWafConfigExclusion>(guardedValue, (value) => RegionSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

