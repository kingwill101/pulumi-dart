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
  ProvisionedClusterState({
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
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion']! as String).input(),
      arcAgentAutoUpgradeEnabled: map['arcAgentAutoUpgradeEnabled'] == null ? null : (map['arcAgentAutoUpgradeEnabled']! as bool).input(),
      arcAgentDesiredVersion: map['arcAgentDesiredVersion'] == null ? null : (map['arcAgentDesiredVersion']! as String).input(),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : (ProvisionedClusterAzureActiveDirectory.fromMap((map['azureActiveDirectory']! as Map).cast<String, dynamic>())).input(),
      distribution: map['distribution'] == null ? null : (map['distribution']! as String).input(),
      identity: map['identity'] == null ? null : (ProvisionedClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      infrastructure: map['infrastructure'] == null ? null : (map['infrastructure']! as String).input(),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : (map['kubernetesVersion']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      offering: map['offering'] == null ? null : (map['offering']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      totalCoreCount: map['totalCoreCount'] == null ? null : (map['totalCoreCount']! as int).input(),
      totalNodeCount: map['totalNodeCount'] == null ? null : (map['totalNodeCount']! as int).input(),
    );
  }
}

