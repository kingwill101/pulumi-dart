// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_hotword_regex.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_likelihood_adjustment.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule_proximity.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegex
  >
  hotwordRegex;

  /// Likelihood adjustment to apply to all matching findings.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment
  >
  likelihoodAdjustment;

  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty of a phone number regex
  /// `(\d{3}) \d{3}-\d{4}` could be adjusted upwards if the area code is known to be the local area code of a company
  /// office using the hotword regex `(xxx)`, where `xxx` is the area code in question.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity
  >
  proximity;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [likelihoodAdjustment] Likelihood adjustment to apply to all matching findings.
  /// [proximity] Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex':
          pulumi.Input.mapInputValue<
            PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegex,
            Map<String, dynamic>
          >(hotwordRegex, (value) => value.toMap()),
      'likelihoodAdjustment':
          pulumi.Input.mapInputValue<
            PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment,
            Map<String, dynamic>
          >(likelihoodAdjustment, (value) => value.toMap()),
      'proximity':
          pulumi.Input.mapInputValue<
            PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity,
            Map<String, dynamic>
          >(proximity, (value) => value.toMap()),
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule(
      hotwordRegex: pulumi.Input.fromValue(
        PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleHotwordRegex.fromMap(
          (map['hotwordRegex']! as Map).cast<String, dynamic>(),
        ),
      ),
      likelihoodAdjustment: pulumi.Input.fromValue(
        PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment.fromMap(
          (map['likelihoodAdjustment']! as Map).cast<String, dynamic>(),
        ),
      ),
      proximity: pulumi.Input.fromValue(
        PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity.fromMap(
          (map['proximity']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
