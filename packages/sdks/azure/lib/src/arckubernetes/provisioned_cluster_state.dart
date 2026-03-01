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
    pulumi.Output<String>? agentVersion,
    pulumi.Output<bool>? arcAgentAutoUpgradeEnabled,
    pulumi.Output<String>? arcAgentDesiredVersion,
    pulumi.Output<ProvisionedClusterAzureActiveDirectory>? azureActiveDirectory,
    pulumi.Output<String>? distribution,
    pulumi.Output<ProvisionedClusterIdentity>? identity,
    pulumi.Output<String>? infrastructure,
    pulumi.Output<String>? kubernetesVersion,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? offering,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? totalCoreCount,
    pulumi.Output<int>? totalNodeCount,
  }) :
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      arcAgentAutoUpgradeEnabled = pulumi.Input.asOptionalInput<bool>(arcAgentAutoUpgradeEnabled),
      arcAgentDesiredVersion = pulumi.Input.asOptionalInput<String>(arcAgentDesiredVersion),
      azureActiveDirectory = pulumi.Input.asOptionalInput<ProvisionedClusterAzureActiveDirectory>(azureActiveDirectory),
      distribution = pulumi.Input.asOptionalInput<String>(distribution),
      identity = pulumi.Input.asOptionalInput<ProvisionedClusterIdentity>(identity),
      infrastructure = pulumi.Input.asOptionalInput<String>(infrastructure),
      kubernetesVersion = pulumi.Input.asOptionalInput<String>(kubernetesVersion),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      offering = pulumi.Input.asOptionalInput<String>(offering),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      totalCoreCount = pulumi.Input.asOptionalInput<int>(totalCoreCount),
      totalNodeCount = pulumi.Input.asOptionalInput<int>(totalNodeCount);

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
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      arcAgentAutoUpgradeEnabled: map['arcAgentAutoUpgradeEnabled'] == null ? null : pulumi.Output.create<bool>(map['arcAgentAutoUpgradeEnabled'] as bool),
      arcAgentDesiredVersion: map['arcAgentDesiredVersion'] == null ? null : pulumi.Output.create<String>(map['arcAgentDesiredVersion'] as String),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : pulumi.Output.create<ProvisionedClusterAzureActiveDirectory>(ProvisionedClusterAzureActiveDirectory.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>())),
      distribution: map['distribution'] == null ? null : pulumi.Output.create<String>(map['distribution'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ProvisionedClusterIdentity>(ProvisionedClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      infrastructure: map['infrastructure'] == null ? null : pulumi.Output.create<String>(map['infrastructure'] as String),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : pulumi.Output.create<String>(map['kubernetesVersion'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      offering: map['offering'] == null ? null : pulumi.Output.create<String>(map['offering'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      totalCoreCount: map['totalCoreCount'] == null ? null : pulumi.Output.create<int>(map['totalCoreCount'] as int),
      totalNodeCount: map['totalNodeCount'] == null ? null : pulumi.Output.create<int>(map['totalNodeCount'] as int),
    );
  }
}

