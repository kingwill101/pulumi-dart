// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_kubernetes_cluster_retention_rule_criteria.dart';
import 'backup_policy_kubernetes_cluster_retention_rule_life_cycle.dart';

class BackupPolicyKubernetesClusterRetentionRule {
  /// A `criteria` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyKubernetesClusterRetentionRuleCriteria>
  criteria;

  /// A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyKubernetesClusterRetentionRuleLifeCycle>>
  lifeCycles;

  /// The name which should be used for this retention rule. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  final pulumi.Input<int> priority;

  /// Creates a new [BackupPolicyKubernetesClusterRetentionRule].
  /// [criteria] A `criteria` block as defined below. Changing this forces a new resource to be created.
  /// [lifeCycles] A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this retention rule. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new resource to be created.
  BackupPolicyKubernetesClusterRetentionRule({
    required this.criteria,
    required this.lifeCycles,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria':
          pulumi.Input.mapInputValue<
            BackupPolicyKubernetesClusterRetentionRuleCriteria,
            Map<String, dynamic>
          >(criteria, (value) => value.toMap()),
      'lifeCycles':
          pulumi.Input.mapInputValue<
            List<BackupPolicyKubernetesClusterRetentionRuleLifeCycle>,
            List<Map<String, dynamic>>
          >(
            lifeCycles,
            (value) =>
                pulumi.Input.encodeList<
                  BackupPolicyKubernetesClusterRetentionRuleLifeCycle,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'priority': priority,
    };
  }

  factory BackupPolicyKubernetesClusterRetentionRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackupPolicyKubernetesClusterRetentionRule(
      criteria: pulumi.Input.fromValue(
        BackupPolicyKubernetesClusterRetentionRuleCriteria.fromMap(
          (map['criteria']! as Map).cast<String, dynamic>(),
        ),
      ),
      lifeCycles: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          BackupPolicyKubernetesClusterRetentionRuleLifeCycle
        >(
          map['lifeCycles']!,
          (value) =>
              BackupPolicyKubernetesClusterRetentionRuleLifeCycle.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}
