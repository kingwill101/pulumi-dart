// ignore_for_file: unused_element, unnecessary_cast

import 'backup_policy_disk_retention_rule_criteria.dart';

class BackupPolicyDiskRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new Backup Policy Disk to be created.
  final BackupPolicyDiskRetentionRuleCriteria criteria;
  /// Duration of deletion after given timespan. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created.
  final String duration;
  /// The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
  final String name;
  /// Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
  final int priority;

  /// Creates a new [BackupPolicyDiskRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new Backup Policy Disk to be created.
  /// [duration] Duration of deletion after given timespan. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created.
  /// [name] The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
  /// [priority] Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.
  BackupPolicyDiskRetentionRule({
    required this.criteria,
    required this.duration,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': criteria.toMap(),
      'duration': duration,
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyDiskRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyDiskRetentionRule(
      criteria: BackupPolicyDiskRetentionRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>()),
      duration: map['duration'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

