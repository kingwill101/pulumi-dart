// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment {
  /// Set the likelihood of a finding to a fixed value. Either this or relative_likelihood can be set.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String>? fixedLikelihood;
  /// Increase or decrease the likelihood by the specified number of levels. For example,
  /// if a finding would be POSSIBLE without the detection rule and relativeLikelihood is 1,
  /// then it is upgraded to LIKELY, while a value of -1 would downgrade it to UNLIKELY.
  /// Likelihood may never drop below VERY_UNLIKELY or exceed VERY_LIKELY, so applying an
  /// adjustment of 1 followed by an adjustment of -1 when base likelihood is VERY_LIKELY
  /// will result in a final likelihood of LIKELY. Either this or fixed_likelihood can be set.
  final pulumi.Input<int>? relativeLikelihood;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment].
  /// [fixedLikelihood] Set the likelihood of a finding to a fixed value. Either this or relative_likelihood can be set.
  /// [relativeLikelihood] Increase or decrease the likelihood by the specified number of levels. For example,
  const PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedLikelihood': ?fixedLikelihood,
      'relativeLikelihood': ?relativeLikelihood,
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment(
      fixedLikelihood: (() { final guardedValue = map['fixedLikelihood']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativeLikelihood: (() { final guardedValue = map['relativeLikelihood']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

