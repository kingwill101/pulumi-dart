// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_kubernetes_cluster_backup_datasource_parameters.dart';

/// Input properties used for looking up and filtering BackupInstanceKubernetesCluster resources.
class BackupInstanceKubernetesClusterState {
  /// A `backup_datasource_parameters` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupInstanceKubernetesClusterBackupDatasourceParameters>? backupDatasourceParameters;
  /// The ID of the Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? backupPolicyId;
  /// The ID of the Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kubernetesClusterId;
  /// The location of the Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The protection state of the Backup Instance Kubernetes Cluster.
  final pulumi.Input<String>? protectionState;
  /// The name of the Resource Group where snapshots are stored. Changing this forces a new resource to be created.
  final pulumi.Input<String>? snapshotResourceGroupName;
  /// The ID of the Backup Vault within which the Backup Instance Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupInstanceKubernetesClusterState].
  /// [backupDatasourceParameters] A `backup_datasource_parameters` block as defined below. Changing this forces a new resource to be created.
  /// [backupPolicyId] The ID of the Backup Policy. Changing this forces a new resource to be created.
  /// [kubernetesClusterId] The ID of the Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [location] The location of the Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [protectionState] The protection state of the Backup Instance Kubernetes Cluster.
  /// [snapshotResourceGroupName] The name of the Resource Group where snapshots are stored. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Instance Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  BackupInstanceKubernetesClusterState({
    this.backupDatasourceParameters,
    this.backupPolicyId,
    this.kubernetesClusterId,
    this.location,
    this.name,
    this.protectionState,
    this.snapshotResourceGroupName,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDatasourceParameters': ?pulumi.Input.mapOptionalInputValue<BackupInstanceKubernetesClusterBackupDatasourceParameters, Map<String, dynamic>>(backupDatasourceParameters, (value) => value.toMap()),
      'backupPolicyId': ?backupPolicyId,
      'kubernetesClusterId': ?kubernetesClusterId,
      'location': ?location,
      'name': ?name,
      'protectionState': ?protectionState,
      'snapshotResourceGroupName': ?snapshotResourceGroupName,
      'vaultId': ?vaultId,
    };
  }

  factory BackupInstanceKubernetesClusterState.fromMap(Map<String, dynamic> map) {
    return BackupInstanceKubernetesClusterState(
      backupDatasourceParameters: map['backupDatasourceParameters'] == null ? null : (BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap((map['backupDatasourceParameters']! as Map).cast<String, dynamic>())).input(),
      backupPolicyId: map['backupPolicyId'] == null ? null : (map['backupPolicyId']! as String).input(),
      kubernetesClusterId: map['kubernetesClusterId'] == null ? null : (map['kubernetesClusterId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState']! as String).input(),
      snapshotResourceGroupName: map['snapshotResourceGroupName'] == null ? null : (map['snapshotResourceGroupName']! as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId']! as String).input(),
    );
  }
}

