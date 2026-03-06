// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_retention_rule_criteria.dart';

class BackupPolicyPostgresqlRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<BackupPolicyPostgresqlRetentionRuleCriteria> criteria;
  /// Duration after which the backup is deleted. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String> duration;
  /// The name which should be used for this retention rule. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<String> name;
  /// Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy PostgreSQL to be created.
  final pulumi.Input<int> priority;

  /// Creates a new [BackupPolicyPostgresqlRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [duration] Duration after which the backup is deleted. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [name] The name which should be used for this retention rule. Changing this forces a new Backup Policy PostgreSQL to be created.
  /// [priority] Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy PostgreSQL to be created.
  const BackupPolicyPostgresqlRetentionRule({
    required this.criteria,
    required this.duration,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': pulumi.Input.mapInputValue<BackupPolicyPostgresqlRetentionRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'duration': duration,
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyPostgresqlRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyPostgresqlRetentionRule(
      criteria: pulumi.Input.fromValue(BackupPolicyPostgresqlRetentionRuleCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}

