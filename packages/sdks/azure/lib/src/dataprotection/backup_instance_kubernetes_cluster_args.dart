// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_kubernetes_cluster_backup_datasource_parameters.dart';

/// {@template pulumi_dataprotection_backup_instance_kubernetes_cluster_backup_instance_kubernetes_cluster_args_doc}
/// The set of arguments for BackupInstanceKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_kubernetes_cluster_backup_instance_kubernetes_cluster_args_doc}
class BackupInstanceKubernetesClusterArgs {
  /// A `backupDatasourceParameters` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupInstanceKubernetesClusterBackupDatasourceParameters>? backupDatasourceParameters;
  /// The ID of the Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> backupPolicyId;
  /// The ID of the Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> kubernetesClusterId;
  /// The location of the Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where snapshots are stored. Changing this forces a new resource to be created.
  final pulumi.Input<String> snapshotResourceGroupName;
  /// The ID of the Backup Vault within which the Backup Instance Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupInstanceKubernetesClusterArgs].
  /// [backupDatasourceParameters] A `backupDatasourceParameters` block as defined below. Changing this forces a new resource to be created.
  /// [backupPolicyId] The ID of the Backup Policy. Changing this forces a new resource to be created.
  /// [kubernetesClusterId] The ID of the Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [location] The location of the Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [snapshotResourceGroupName] The name of the Resource Group where snapshots are stored. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Instance Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  const BackupInstanceKubernetesClusterArgs({
    this.backupDatasourceParameters,
    required this.backupPolicyId,
    required this.kubernetesClusterId,
    this.location,
    this.name,
    required this.snapshotResourceGroupName,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDatasourceParameters': ?pulumi.Input.mapOptionalInputValue<BackupInstanceKubernetesClusterBackupDatasourceParameters, Map<String, dynamic>>(backupDatasourceParameters, (value) => value.toMap()),
      'backupPolicyId': backupPolicyId,
      'kubernetesClusterId': kubernetesClusterId,
      'location': ?location,
      'name': ?name,
      'snapshotResourceGroupName': snapshotResourceGroupName,
      'vaultId': vaultId,
    };
  }

  factory BackupInstanceKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceKubernetesClusterArgs(
      backupDatasourceParameters: (() { final guardedValue = map['backupDatasourceParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupPolicyId: pulumi.Input.fromValue(map['backupPolicyId'] as String),
      kubernetesClusterId: pulumi.Input.fromValue(map['kubernetesClusterId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotResourceGroupName: pulumi.Input.fromValue(map['snapshotResourceGroupName'] as String),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}
