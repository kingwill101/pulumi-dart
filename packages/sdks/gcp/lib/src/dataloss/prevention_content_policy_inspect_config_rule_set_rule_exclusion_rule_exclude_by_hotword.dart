// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword_hotword_regex.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword_proximity.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex> hotwordRegex;
  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty of a phone number regex
  /// `(\d{3}) \d{3}-\d{4}` could be adjusted upwards if the area code is known to be the local area code of a company
  /// office using the hotword regex `(xxx)`, where `xxx` is the area code in question.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity> proximity;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [proximity] Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  const PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword({
    required this.hotwordRegex,
    required this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'proximity': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword(
      hotwordRegex: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex.fromMap((map['hotwordRegex']! as Map).cast<String, dynamic>())),
      proximity: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap((map['proximity']! as Map).cast<String, dynamic>())),
    );
  }
}
