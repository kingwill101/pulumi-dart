// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment {
  /// Set the likelihood of a finding to a fixed value. Either this or relativeLikelihood can be set.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String> fixedLikelihood;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment].
  /// [fixedLikelihood] Set the likelihood of a finding to a fixed value. Either this or relativeLikelihood can be set.
  const PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment({
    required this.fixedLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedLikelihood': fixedLikelihood,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment(
      fixedLikelihood: pulumi.Input.fromValue(map['fixedLikelihood'] as String),
    );
  }
}
