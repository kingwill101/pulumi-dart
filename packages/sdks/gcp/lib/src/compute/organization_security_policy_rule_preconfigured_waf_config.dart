// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_preconfigured_waf_config_exclusion.dart';

class OrganizationSecurityPolicyRulePreconfiguredWafConfig {
  /// An exclusion to apply during preconfigured WAF evaluation.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion>?>? exclusions;

  /// Creates a new [OrganizationSecurityPolicyRulePreconfiguredWafConfig].
  /// [exclusions] An exclusion to apply during preconfigured WAF evaluation.
  const OrganizationSecurityPolicyRulePreconfiguredWafConfig({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationSecurityPolicyRulePreconfiguredWafConfig.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRulePreconfiguredWafConfig(
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion>(guardedValue, (value) => OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
