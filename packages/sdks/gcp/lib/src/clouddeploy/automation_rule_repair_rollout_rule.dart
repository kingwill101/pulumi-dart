// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_repair_rollout_rule_repair_phase.dart';

class AutomationRuleRepairRolloutRule {
  /// Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final pulumi.Input<String> id;
  /// Optional. Jobs to repair. Proceeds only after job name matched any one in the list, or for all jobs if unspecified or empty. The phase that includes the job must match the phase ID specified in sourcePhase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: ^a-z?$.
  final pulumi.Input<List<String>?>? jobs;
  /// Optional. Phases within which jobs are subject to automatic repair actions on failure. Proceeds only after phase name matched any one in the list, or for all phases if unspecified. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: ^a-z?$.
  final pulumi.Input<List<String>?>? phases;
  /// Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  /// Structure is documented below.
  final pulumi.Input<List<AutomationRuleRepairRolloutRuleRepairPhase>?>? repairPhases;

  /// Creates a new [AutomationRuleRepairRolloutRule].
  /// [id] Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  /// [jobs] Optional. Jobs to repair. Proceeds only after job name matched any one in the list, or for all jobs if unspecified or empty. The phase that includes the job must match the phase ID specified in sourcePhase. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: ^a-z?$.
  /// [phases] Optional. Phases within which jobs are subject to automatic repair actions on failure. Proceeds only after phase name matched any one in the list, or for all phases if unspecified. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: ^a-z?$.
  /// [repairPhases] Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^a-z?$`.
  const AutomationRuleRepairRolloutRule({
    required this.id,
    this.jobs,
    this.phases,
    this.repairPhases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'jobs': ?jobs,
      'phases': ?phases,
      'repairPhases': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleRepairRolloutRuleRepairPhase>, List<Map<String, dynamic>>>(repairPhases, (value) => pulumi.Input.encodeList<AutomationRuleRepairRolloutRuleRepairPhase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomationRuleRepairRolloutRule.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRepairRolloutRule(
      id: pulumi.Input.fromValue(map['id'] as String),
      jobs: (() { final guardedValue = map['jobs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      phases: (() { final guardedValue = map['phases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      repairPhases: (() { final guardedValue = map['repairPhases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationRuleRepairRolloutRuleRepairPhase>(guardedValue, (value) => AutomationRuleRepairRolloutRuleRepairPhase.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
