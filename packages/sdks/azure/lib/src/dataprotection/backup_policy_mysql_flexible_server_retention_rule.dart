// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_retention_rule_criteria.dart';
import 'backup_policy_mysql_flexible_server_retention_rule_life_cycle.dart';

class BackupPolicyMysqlFlexibleServerRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new resource to be created.
  final BackupPolicyMysqlFlexibleServerRetentionRuleCriteria criteria;
  /// A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  final List<BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle> lifeCycles;
  /// Specifies the name of the retention rule. Changing this forces a new resource to be created.
  final String name;
  /// Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  final int priority;

  /// Creates a new [BackupPolicyMysqlFlexibleServerRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new resource to be created.
  /// [lifeCycles] A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the retention rule. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  BackupPolicyMysqlFlexibleServerRetentionRule({
    required this.criteria,
    required this.lifeCycles,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': criteria.toMap(),
      'lifeCycles': pulumi.Input.encodeList<BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle, Map<String, dynamic>>(lifeCycles, (value) => value.toMap()),
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyMysqlFlexibleServerRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMysqlFlexibleServerRetentionRule(
      criteria: BackupPolicyMysqlFlexibleServerRetentionRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>()),
      lifeCycles: pulumi.Input.decodeList<BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle>(map['lifeCycles'], (value) => BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycle.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

