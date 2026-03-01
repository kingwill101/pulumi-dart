// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_protection_cluster_args_doc}
/// Arguments for getReplicationProtectionCluster.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_protection_cluster_args_doc}
class GetReplicationProtectionClusterArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// Replication protection cluster name.
  final pulumi.Input<String> replicationProtectionClusterName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationProtectionClusterArgs].
  /// [fabricName] Fabric name.
  /// [protectionContainerName] Protection container name.
  /// [replicationProtectionClusterName] Replication protection cluster name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationProtectionClusterArgs({
    required pulumi.Output<String> fabricName,
    required pulumi.Output<String> protectionContainerName,
    required pulumi.Output<String> replicationProtectionClusterName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      protectionContainerName = pulumi.Input.asInput<String>(protectionContainerName),
      replicationProtectionClusterName = pulumi.Input.asInput<String>(replicationProtectionClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'protectionContainerName': protectionContainerName,
      'replicationProtectionClusterName': replicationProtectionClusterName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationProtectionClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationProtectionClusterArgs(
      fabricName: pulumi.Output.create<String>(map['fabricName'] as String),
      protectionContainerName: pulumi.Output.create<String>(map['protectionContainerName'] as String),
      replicationProtectionClusterName: pulumi.Output.create<String>(map['replicationProtectionClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

