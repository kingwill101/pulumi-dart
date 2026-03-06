// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_cluster_azure_active_directory.dart';
import 'provisioned_cluster_identity.dart';

/// Input properties used for looking up and filtering ProvisionedCluster resources.
class ProvisionedClusterState {
  /// The version of the agent running on the cluster resource.
  final pulumi.Input<String>? agentVersion;
  /// Whether the Arc agents will be upgraded automatically to the latest version. Defaults to `true`.
  final pulumi.Input<bool>? arcAgentAutoUpgradeEnabled;
  /// The version of the Arc agents to be installed on the cluster.
  final pulumi.Input<String>? arcAgentDesiredVersion;
  /// An `azure_active_directory` block as defined below.
  final pulumi.Input<ProvisionedClusterAzureActiveDirectory>? azureActiveDirectory;
  /// The distribution running on this Arc Kubernetes Provisioned Cluster.
  final pulumi.Input<String>? distribution;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<ProvisionedClusterIdentity>? identity;
  /// The infrastructure on which the Arc Kubernetes Provisioned Cluster is running on.
  final pulumi.Input<String>? infrastructure;
  /// The Kubernetes version of the cluster resource.
  final pulumi.Input<String>? kubernetesVersion;
  /// The Azure Region where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Arc Kubernetes Provisioned Cluster. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String>? name;
  /// The cluster offering.
  final pulumi.Input<String>? offering;
  /// The name of the Resource Group where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Kubernetes Provisioned Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The number of CPU cores present in the cluster resource.
  final pulumi.Input<int>? totalCoreCount;
  /// The number of nodes present in the cluster resource.
  final pulumi.Input<int>? totalNodeCount;

  /// Creates a new [ProvisionedClusterState].
  /// [agentVersion] The version of the agent running on the cluster resource.
  /// [arcAgentAutoUpgradeEnabled] Whether the Arc agents will be upgraded automatically to the latest version. Defaults to `true`.
  /// [arcAgentDesiredVersion] The version of the Arc agents to be installed on the cluster.
  /// [azureActiveDirectory] An `azure_active_directory` block as defined below.
  /// [distribution] The distribution running on this Arc Kubernetes Provisioned Cluster.
  /// [identity] An `identity` block as defined below. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [infrastructure] The infrastructure on which the Arc Kubernetes Provisioned Cluster is running on.
  /// [kubernetesVersion] The Kubernetes version of the cluster resource.
  /// [location] The Azure Region where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [name] The name which should be used for this Arc Kubernetes Provisioned Cluster. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [offering] The cluster offering.
  /// [resourceGroupName] The name of the Resource Group where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Arc Kubernetes Provisioned Cluster.
  /// [totalCoreCount] The number of CPU cores present in the cluster resource.
  /// [totalNodeCount] The number of nodes present in the cluster resource.
  const ProvisionedClusterState({
    this.agentVersion,
    this.arcAgentAutoUpgradeEnabled,
    this.arcAgentDesiredVersion,
    this.azureActiveDirectory,
    this.distribution,
    this.identity,
    this.infrastructure,
    this.kubernetesVersion,
    this.location,
    this.name,
    this.offering,
    this.resourceGroupName,
    this.tags,
    this.totalCoreCount,
    this.totalNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'arcAgentAutoUpgradeEnabled': ?arcAgentAutoUpgradeEnabled,
      'arcAgentDesiredVersion': ?arcAgentDesiredVersion,
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<ProvisionedClusterAzureActiveDirectory, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'distribution': ?distribution,
      'identity': ?pulumi.Input.mapOptionalInputValue<ProvisionedClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructure': ?infrastructure,
      'kubernetesVersion': ?kubernetesVersion,
      'location': ?location,
      'name': ?name,
      'offering': ?offering,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'totalCoreCount': ?totalCoreCount,
      'totalNodeCount': ?totalNodeCount,
    };
  }

  factory ProvisionedClusterState.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterState(
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcAgentAutoUpgradeEnabled: (() { final guardedValue = map['arcAgentAutoUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arcAgentDesiredVersion: (() { final guardedValue = map['arcAgentDesiredVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureActiveDirectory: (() { final guardedValue = map['azureActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClusterAzureActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructure: (() { final guardedValue = map['infrastructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offering: (() { final guardedValue = map['offering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      totalCoreCount: (() { final guardedValue = map['totalCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalNodeCount: (() { final guardedValue = map['totalNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

