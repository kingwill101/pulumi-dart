// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_compute_beta.dart';

class SecurityPolicyRulePreconfiguredWafConfigComputeBeta {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final pulumi.Input<
    List<SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta>
  >?
  exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigComputeBeta].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  SecurityPolicyRulePreconfiguredWafConfigComputeBeta({this.exclusions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta>,
            List<Map<String, dynamic>>
          >(
            exclusions,
            (value) =>
                pulumi.Input.encodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfigComputeBeta(
      exclusions: (() {
        final guardedValue = map['exclusions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta
          >(
            guardedValue,
            (value) =>
                SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
