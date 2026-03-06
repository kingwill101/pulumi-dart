// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_cluster_azure_active_directory.dart';
import 'provisioned_cluster_identity.dart';

/// {@template pulumi_arckubernetes_provisioned_cluster_provisioned_cluster_args_doc}
/// The set of arguments for ProvisionedCluster.
/// {@endtemplate}
/// {@macro pulumi_arckubernetes_provisioned_cluster_provisioned_cluster_args_doc}
class ProvisionedClusterArgs {
  /// Whether the Arc agents will be upgraded automatically to the latest version. Defaults to `true`.
  final pulumi.Input<bool>? arcAgentAutoUpgradeEnabled;
  /// The version of the Arc agents to be installed on the cluster.
  final pulumi.Input<String>? arcAgentDesiredVersion;
  /// An `azure_active_directory` block as defined below.
  final pulumi.Input<ProvisionedClusterAzureActiveDirectory>? azureActiveDirectory;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<ProvisionedClusterIdentity> identity;
  /// The Azure Region where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Arc Kubernetes Provisioned Cluster. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Kubernetes Provisioned Cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProvisionedClusterArgs].
  /// [arcAgentAutoUpgradeEnabled] Whether the Arc agents will be upgraded automatically to the latest version. Defaults to `true`.
  /// [arcAgentDesiredVersion] The version of the Arc agents to be installed on the cluster.
  /// [azureActiveDirectory] An `azure_active_directory` block as defined below.
  /// [identity] An `identity` block as defined below. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [location] The Azure Region where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [name] The name which should be used for this Arc Kubernetes Provisioned Cluster. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [resourceGroupName] The name of the Resource Group where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Arc Kubernetes Provisioned Cluster.
  const ProvisionedClusterArgs({
    this.arcAgentAutoUpgradeEnabled,
    this.arcAgentDesiredVersion,
    this.azureActiveDirectory,
    required this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAgentAutoUpgradeEnabled': ?arcAgentAutoUpgradeEnabled,
      'arcAgentDesiredVersion': ?arcAgentDesiredVersion,
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<ProvisionedClusterAzureActiveDirectory, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'identity': pulumi.Input.mapInputValue<ProvisionedClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProvisionedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterArgs(
      arcAgentAutoUpgradeEnabled: (() { final guardedValue = map['arcAgentAutoUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arcAgentDesiredVersion: (() { final guardedValue = map['arcAgentDesiredVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureActiveDirectory: (() { final guardedValue = map['azureActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClusterAzureActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: pulumi.Input.fromValue(ProvisionedClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

