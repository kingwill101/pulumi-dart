// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_custom_info_type_detection_rule_hotword_rule_hotword_regex.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_detection_rule_hotword_rule_likelihood_adjustment.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_detection_rule_hotword_rule_proximity.dart';

class PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleHotwordRegex> hotwordRegex;
  /// Likelihood adjustment to apply to all matching findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleLikelihoodAdjustment> likelihoodAdjustment;
  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity> proximity;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [likelihoodAdjustment] Likelihood adjustment to apply to all matching findings.
  /// [proximity] Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  const PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule({
    required this.hotwordRegex,
    required this.likelihoodAdjustment,
    required this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleHotwordRegex, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'likelihoodAdjustment': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleLikelihoodAdjustment, Map<String, dynamic>>(likelihoodAdjustment, (value) => value.toMap()),
      'proximity': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRule(
      hotwordRegex: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleHotwordRegex.fromMap((map['hotwordRegex']! as Map).cast<String, dynamic>())),
      likelihoodAdjustment: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleLikelihoodAdjustment.fromMap((map['likelihoodAdjustment']! as Map).cast<String, dynamic>())),
      proximity: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRuleHotwordRuleProximity.fromMap((map['proximity']! as Map).cast<String, dynamic>())),
    );
  }
}
