// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_disk_retention_rule_criteria.dart';

class BackupPolicyDiskRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<BackupPolicyDiskRetentionRuleCriteria> criteria;
  /// Duration of deletion after given timespan. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<String> duration;
  /// The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<String> name;
  /// Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<int> priority;

  /// Creates a new [BackupPolicyDiskRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new Backup Policy Disk to be created.
  /// [duration] Duration of deletion after given timespan. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created.
  /// [name] The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
  /// [priority] Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
  const BackupPolicyDiskRetentionRule({
    required this.criteria,
    required this.duration,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': pulumi.Input.mapInputValue<BackupPolicyDiskRetentionRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'duration': duration,
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyDiskRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyDiskRetentionRule(
      criteria: pulumi.Input.fromValue(BackupPolicyDiskRetentionRuleCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
    );
  }
}
