// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword_hotword_regex.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword_proximity.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex>? hotwordRegex;
  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty of a phone number regex
  /// `(\d{3}) \d{3}-\d{4}` could be adjusted upwards if the area code is known to be the local area code of a company
  /// office using the hotword regex `(xxx)`, where `xxx` is the area code in question.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity>? proximity;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [proximity] Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  const PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword({
    this.hotwordRegex,
    this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'proximity': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotword(
      hotwordRegex: (() { final guardedValue = map['hotwordRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proximity: (() { final guardedValue = map['proximity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
