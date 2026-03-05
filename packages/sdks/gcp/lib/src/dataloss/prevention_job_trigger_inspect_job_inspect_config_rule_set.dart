// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_info_type.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSet {
  /// List of infoTypes this rule set is applied to.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType>>? infoTypes;
  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerInspectJobInspectConfigRuleSetRule>> rules;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSet].
  /// [infoTypes] List of infoTypes this rule set is applied to.
  /// [rules] Set of rules to be applied to infoTypes. The rules are applied in order.
  PreventionJobTriggerInspectJobInspectConfigRuleSet({
    this.infoTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rules': pulumi.Input.mapInputValue<List<PreventionJobTriggerInspectJobInspectConfigRuleSetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PreventionJobTriggerInspectJobInspectConfigRuleSetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSet.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSet(
      infoTypes: (() { final guardedValue = map['infoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType>(guardedValue, (value) => PreventionJobTriggerInspectJobInspectConfigRuleSetInfoType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerInspectJobInspectConfigRuleSetRule>(map['rules']!, (value) => PreventionJobTriggerInspectJobInspectConfigRuleSetRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

