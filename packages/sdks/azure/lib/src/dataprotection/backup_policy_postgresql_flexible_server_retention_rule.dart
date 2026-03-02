// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_flexible_server_retention_rule_criteria.dart';
import 'backup_policy_postgresql_flexible_server_retention_rule_life_cycle.dart';

class BackupPolicyPostgresqlFlexibleServerRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteria> criteria;
  /// A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycle>> lifeCycles;
  /// Specifies the name of the retention rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  final pulumi.Input<int> priority;

  /// Creates a new [BackupPolicyPostgresqlFlexibleServerRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new resource to be created.
  /// [lifeCycles] A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the retention rule. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  BackupPolicyPostgresqlFlexibleServerRetentionRule({
    required this.criteria,
    required this.lifeCycles,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': pulumi.Input.mapInputValue<BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'lifeCycles': pulumi.Input.mapInputValue<List<BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycle>, List<Map<String, dynamic>>>(lifeCycles, (value) => pulumi.Input.encodeList<BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyPostgresqlFlexibleServerRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyPostgresqlFlexibleServerRetentionRule(
      criteria: (BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>())).input(),
      lifeCycles: (pulumi.Input.decodeList<BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycle>(map['lifeCycles'], (value) => BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycle.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
    );
  }
}

