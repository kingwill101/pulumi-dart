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
    pulumi.Output<BackupInstanceKubernetesClusterBackupDatasourceParameters>? backupDatasourceParameters,
    pulumi.Output<String>? backupPolicyId,
    pulumi.Output<String>? kubernetesClusterId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionState,
    pulumi.Output<String>? snapshotResourceGroupName,
    pulumi.Output<String>? vaultId,
  }) :
      backupDatasourceParameters = pulumi.Input.asOptionalInput<BackupInstanceKubernetesClusterBackupDatasourceParameters>(backupDatasourceParameters),
      backupPolicyId = pulumi.Input.asOptionalInput<String>(backupPolicyId),
      kubernetesClusterId = pulumi.Input.asOptionalInput<String>(kubernetesClusterId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionState = pulumi.Input.asOptionalInput<String>(protectionState),
      snapshotResourceGroupName = pulumi.Input.asOptionalInput<String>(snapshotResourceGroupName),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      backupDatasourceParameters: map['backupDatasourceParameters'] == null ? null : pulumi.Output.create<BackupInstanceKubernetesClusterBackupDatasourceParameters>(BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap((map['backupDatasourceParameters'] as Map).cast<String, dynamic>())),
      backupPolicyId: map['backupPolicyId'] == null ? null : pulumi.Output.create<String>(map['backupPolicyId'] as String),
      kubernetesClusterId: map['kubernetesClusterId'] == null ? null : pulumi.Output.create<String>(map['kubernetesClusterId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionState: map['protectionState'] == null ? null : pulumi.Output.create<String>(map['protectionState'] as String),
      snapshotResourceGroupName: map['snapshotResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['snapshotResourceGroupName'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

