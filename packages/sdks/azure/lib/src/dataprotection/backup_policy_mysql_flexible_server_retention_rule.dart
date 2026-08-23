// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_retention_rule_criteria.dart';
import 'backup_policy_mysql_flexible_server_retention_rule_life_cycle.dart';

class BackupPolicyMysqlFlexibleServerRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyMysqlFlexibleServerRetentionRuleCriteria> criteria;
  /// A `lifeCycle` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle>> lifeCycles;
  /// Specifies the name of the retention rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  final pulumi.Input<int> priority;

  /// Creates a new [BackupPolicyMysqlFlexibleServerRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new resource to be created.
  /// [lifeCycles] A `lifeCycle` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the retention rule. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  const BackupPolicyMysqlFlexibleServerRetentionRule({
    required this.criteria,
    required this.lifeCycles,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': pulumi.Input.mapInputValue<BackupPolicyMysqlFlexibleServerRetentionRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'lifeCycles': pulumi.Input.mapInputValue<List<BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle>, List<Map<String, dynamic>>>(lifeCycles, (value) => pulumi.Input.encodeList<BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyMysqlFlexibleServerRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMysqlFlexibleServerRetentionRule(
      criteria: pulumi.Input.fromValue(BackupPolicyMysqlFlexibleServerRetentionRuleCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      lifeCycles: pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle>(map['lifeCycles']!, (value) => BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}
