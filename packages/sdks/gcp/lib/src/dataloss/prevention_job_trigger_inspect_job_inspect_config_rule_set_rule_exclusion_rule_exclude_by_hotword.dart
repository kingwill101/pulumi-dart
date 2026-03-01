// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword_hotword_regex.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword_proximity.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex? hotwordRegex;
  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty of a phone number regex
  /// `(\d{3}) \d{3}-\d{4}` could be adjusted upwards if the area code is known to be the local area code of a company
  /// office using the hotword regex `(xxx)`, where `xxx` is the area code in question.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity? proximity;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [proximity] Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword({
    this.hotwordRegex,
    this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': ?hotwordRegex == null ? null : hotwordRegex!.toMap(),
      'proximity': ?proximity == null ? null : proximity!.toMap(),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword(
      hotwordRegex: map['hotwordRegex'] == null ? null : PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex.fromMap((map['hotwordRegex'] as Map).cast<String, dynamic>()),
      proximity: map['proximity'] == null ? null : PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap((map['proximity'] as Map).cast<String, dynamic>()),
    );
  }
}

