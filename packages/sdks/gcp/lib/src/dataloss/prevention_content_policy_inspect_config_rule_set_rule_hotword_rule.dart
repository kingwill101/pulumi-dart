// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_hotword_rule_hotword_regex.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_hotword_rule_likelihood_adjustment.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_hotword_rule_proximity.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleHotwordRegex> hotwordRegex;
  /// Likelihood adjustment to apply to all matching findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment> likelihoodAdjustment;
  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleProximity> proximity;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [likelihoodAdjustment] Likelihood adjustment to apply to all matching findings.
  /// [proximity] Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  const PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleHotwordRegex, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'likelihoodAdjustment': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment, Map<String, dynamic>>(likelihoodAdjustment, (value) => value.toMap()),
      'proximity': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleProximity, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule(
      hotwordRegex: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleHotwordRegex.fromMap((map['hotwordRegex']! as Map).cast<String, dynamic>())),
      likelihoodAdjustment: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment.fromMap((map['likelihoodAdjustment']! as Map).cast<String, dynamic>())),
      proximity: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRuleProximity.fromMap((map['proximity']! as Map).cast<String, dynamic>())),
    );
  }
}
