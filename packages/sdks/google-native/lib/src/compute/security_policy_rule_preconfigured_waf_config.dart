// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion.dart';

class SecurityPolicyRulePreconfiguredWafConfig {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusion>>?
  exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfig].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  SecurityPolicyRulePreconfiguredWafConfig({this.exclusions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecurityPolicyRulePreconfiguredWafConfigExclusion>,
            List<Map<String, dynamic>>
          >(
            exclusions,
            (value) =>
                pulumi.Input.encodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfig(
      exclusions: (() {
        final guardedValue = map['exclusions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusion
          >(
            guardedValue,
            (value) =>
                SecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
