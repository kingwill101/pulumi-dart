// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_kubernetes_cluster_default_retention_rule_life_cycle.dart';

class BackupPolicyKubernetesClusterDefaultRetentionRule {
  /// A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycle>> lifeCycles;

  /// Creates a new [BackupPolicyKubernetesClusterDefaultRetentionRule].
  /// [lifeCycles] A `life_cycle` block as defined below. Changing this forces a new resource to be created.
  BackupPolicyKubernetesClusterDefaultRetentionRule({
    required this.lifeCycles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifeCycles': pulumi.Input.mapInputValue<List<BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycle>, List<Map<String, dynamic>>>(lifeCycles, (value) => pulumi.Input.encodeList<BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycle, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupPolicyKubernetesClusterDefaultRetentionRule.fromMap(Map<String, dynamic> map) {
    return BackupPolicyKubernetesClusterDefaultRetentionRule(
      lifeCycles: pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycle>(map['lifeCycles']!, (value) => BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycle.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

