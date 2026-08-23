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
  const GetReplicationProtectionClusterArgs({
    required this.fabricName,
    required this.protectionContainerName,
    required this.replicationProtectionClusterName,
    required this.resourceGroupName,
    required this.resourceName,
  });

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
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      protectionContainerName: pulumi.Input.fromValue(map['protectionContainerName'] as String),
      replicationProtectionClusterName: pulumi.Input.fromValue(map['replicationProtectionClusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
