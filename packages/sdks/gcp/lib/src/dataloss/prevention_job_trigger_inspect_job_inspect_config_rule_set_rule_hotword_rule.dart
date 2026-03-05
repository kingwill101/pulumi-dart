// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_hotword_regex.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_likelihood_adjustment.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule_proximity.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegex>? hotwordRegex;
  /// Likelihood adjustment to apply to all matching findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment>? likelihoodAdjustment;
  /// Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  /// exceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty of a phone number regex
  /// `(\d{3}) \d{3}-\d{4}` could be adjusted upwards if the area code is known to be the local area code of a company
  /// office using the hotword regex `(xxx)`, where `xxx` is the area code in question.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity>? proximity;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [likelihoodAdjustment] Likelihood adjustment to apply to all matching findings.
  /// [proximity] Proximity of the finding within which the entire hotword must reside. The total length of the window cannot
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule({
    this.hotwordRegex,
    this.likelihoodAdjustment,
    this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegex, Map<String, dynamic>>(hotwordRegex, (value) => value.toMap()),
      'likelihoodAdjustment': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment, Map<String, dynamic>>(likelihoodAdjustment, (value) => value.toMap()),
      'proximity': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity, Map<String, dynamic>>(proximity, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule(
      hotwordRegex: (() { final guardedValue = map['hotwordRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleHotwordRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      likelihoodAdjustment: (() { final guardedValue = map['likelihoodAdjustment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleLikelihoodAdjustment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proximity: (() { final guardedValue = map['proximity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

