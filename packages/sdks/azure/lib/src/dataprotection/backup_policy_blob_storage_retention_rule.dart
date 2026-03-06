// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_blob_storage_retention_rule_criteria.dart';
import 'backup_policy_blob_storage_retention_rule_life_cycle.dart';

class BackupPolicyBlobStorageRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<BackupPolicyBlobStorageRetentionRuleCriteria> criteria;
  /// A `life_cycle` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<BackupPolicyBlobStorageRetentionRuleLifeCycle> lifeCycle;
  /// The name which should be used for this retention rule. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String> name;
  /// Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<int> priority;

  /// Creates a new [BackupPolicyBlobStorageRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [lifeCycle] A `life_cycle` block as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [name] The name which should be used for this retention rule. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [priority] Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy Blob Storage to be created.
  const BackupPolicyBlobStorageRetentionRule({
    required this.criteria,
    required this.lifeCycle,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': pulumi.Input.mapInputValue<BackupPolicyBlobStorageRetentionRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'lifeCycle': pulumi.Input.mapInputValue<BackupPolicyBlobStorageRetentionRuleLifeCycle, Map<String, dynamic>>(lifeCycle, (value) => value.toMap()),
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyBlobStorageRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyBlobStorageRetentionRule(
      criteria: pulumi.Input.fromValue(BackupPolicyBlobStorageRetentionRuleCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      lifeCycle: pulumi.Input.fromValue(BackupPolicyBlobStorageRetentionRuleLifeCycle.fromMap((map['lifeCycle']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}

