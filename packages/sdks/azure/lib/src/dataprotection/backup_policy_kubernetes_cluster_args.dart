// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_kubernetes_cluster_default_retention_rule.dart';
import 'backup_policy_kubernetes_cluster_retention_rule.dart';

/// {@template pulumi_dataprotection_backup_policy_kubernetes_cluster_backup_policy_kubernetes_cluster_args_doc}
/// The set of arguments for BackupPolicyKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_policy_kubernetes_cluster_backup_policy_kubernetes_cluster_args_doc}
class BackupPolicyKubernetesClusterArgs {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> backupRepeatingTimeIntervals;
  /// A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyKubernetesClusterDefaultRetentionRule> defaultRetentionRule;
  /// The name which should be used for the Backup Policy Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Backup Policy Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyKubernetesClusterRetentionRule>>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeZone;
  /// The name of the Backup Vault where the Backup Policy Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultName;

  /// Creates a new [BackupPolicyKubernetesClusterArgs].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new resource to be created.
  /// [defaultRetentionRule] A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Backup Policy Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Backup Policy Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  /// [retentionRules] One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  /// [vaultName] The name of the Backup Vault where the Backup Policy Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  BackupPolicyKubernetesClusterArgs({
    required pulumi.Output<List<String>> backupRepeatingTimeIntervals,
    required pulumi.Output<BackupPolicyKubernetesClusterDefaultRetentionRule> defaultRetentionRule,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<BackupPolicyKubernetesClusterRetentionRule>>? retentionRules,
    pulumi.Output<String>? timeZone,
    required pulumi.Output<String> vaultName,
  }) :
      backupRepeatingTimeIntervals = pulumi.Input.asInput<List<String>>(backupRepeatingTimeIntervals),
      defaultRetentionRule = pulumi.Input.asInput<BackupPolicyKubernetesClusterDefaultRetentionRule>(defaultRetentionRule),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionRules = pulumi.Input.asOptionalInput<List<BackupPolicyKubernetesClusterRetentionRule>>(retentionRules),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': backupRepeatingTimeIntervals,
      'defaultRetentionRule': pulumi.Input.mapInputValue<BackupPolicyKubernetesClusterDefaultRetentionRule, Map<String, dynamic>>(defaultRetentionRule, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyKubernetesClusterRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyKubernetesClusterRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultName': vaultName,
    };
  }

  factory BackupPolicyKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyKubernetesClusterArgs(
      backupRepeatingTimeIntervals: pulumi.Output.create<List<String>>((map['backupRepeatingTimeIntervals'] as List).cast<String>()),
      defaultRetentionRule: pulumi.Output.create<BackupPolicyKubernetesClusterDefaultRetentionRule>(BackupPolicyKubernetesClusterDefaultRetentionRule.fromMap((map['defaultRetentionRule'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionRules: map['retentionRules'] == null ? null : pulumi.Output.create<List<BackupPolicyKubernetesClusterRetentionRule>>(pulumi.Input.decodeList<BackupPolicyKubernetesClusterRetentionRule>(map['retentionRules'], (value) => BackupPolicyKubernetesClusterRetentionRule.fromMap((value as Map).cast<String, dynamic>()))),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

