// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment {
  /// Set the likelihood of a finding to a fixed value. Either this or relativeLikelihood can be set.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String?>? fixedLikelihood;
  /// Increase or decrease the likelihood by the specified number of levels.
  final pulumi.Input<int?>? relativeLikelihood;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment].
  /// [fixedLikelihood] Set the likelihood of a finding to a fixed value. Either this or relativeLikelihood can be set.
  /// [relativeLikelihood] Increase or decrease the likelihood by the specified number of levels.
  const PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedLikelihood': ?fixedLikelihood,
      'relativeLikelihood': ?relativeLikelihood,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment(
      fixedLikelihood: (() { final guardedValue = map['fixedLikelihood']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativeLikelihood: (() { final guardedValue = map['relativeLikelihood']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
