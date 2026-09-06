// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_protection_cluster_properties.dart';

/// {@template pulumi_recoveryservices_replication_protection_cluster_args_doc}
/// The set of arguments for ReplicationProtectionCluster.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_protection_cluster_args_doc}
class ReplicationProtectionClusterArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// The custom data.
  final pulumi.Input<ReplicationProtectionClusterProperties?>? properties;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// Replication protection cluster name.
  final pulumi.Input<String?>? replicationProtectionClusterName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationProtectionClusterArgs].
  /// [fabricName] Fabric name.
  /// [properties] The custom data.
  /// [protectionContainerName] Protection container name.
  /// [replicationProtectionClusterName] Replication protection cluster name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  const ReplicationProtectionClusterArgs({
    required this.fabricName,
    this.properties,
    required this.protectionContainerName,
    this.replicationProtectionClusterName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ReplicationProtectionClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectionContainerName': protectionContainerName,
      'replicationProtectionClusterName': ?replicationProtectionClusterName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationProtectionClusterArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationProtectionClusterArgs(
      fabricName: pulumi.Input.fromValue(map['fabricName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicationProtectionClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectionContainerName: pulumi.Input.fromValue(map['protectionContainerName'] as String),
      replicationProtectionClusterName: (() { final guardedValue = map['replicationProtectionClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
