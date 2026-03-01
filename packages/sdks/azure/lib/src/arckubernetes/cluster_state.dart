// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_identity.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String>? agentPublicKeyCertificate;
  /// Version of the agent running on the cluster resource.
  final pulumi.Input<String>? agentVersion;
  /// The distribution running on this Arc Kubernetes Cluster.
  final pulumi.Input<String>? distribution;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<ClusterIdentity>? identity;
  /// The infrastructure on which the Arc Kubernetes Cluster is running on.
  final pulumi.Input<String>? infrastructure;
  /// The Kubernetes version of the cluster resource.
  final pulumi.Input<String>? kubernetesVersion;
  /// Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String>? name;
  /// The cluster offering.
  final pulumi.Input<String>? offering;
  /// Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Kubernetes Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Number of CPU cores present in the cluster resource.
  final pulumi.Input<int>? totalCoreCount;
  /// Number of nodes present in the cluster resource.
  final pulumi.Input<int>? totalNodeCount;

  /// Creates a new [ClusterState].
  /// [agentPublicKeyCertificate] Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [agentVersion] Version of the agent running on the cluster resource.
  /// [distribution] The distribution running on this Arc Kubernetes Cluster.
  /// [identity] An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [infrastructure] The infrastructure on which the Arc Kubernetes Cluster is running on.
  /// [kubernetesVersion] The Kubernetes version of the cluster resource.
  /// [location] Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [name] Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [offering] The cluster offering.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Arc Kubernetes Cluster.
  /// [totalCoreCount] Number of CPU cores present in the cluster resource.
  /// [totalNodeCount] Number of nodes present in the cluster resource.
  ClusterState({
    pulumi.Output<String>? agentPublicKeyCertificate,
    pulumi.Output<String>? agentVersion,
    pulumi.Output<String>? distribution,
    pulumi.Output<ClusterIdentity>? identity,
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
      agentPublicKeyCertificate = pulumi.Input.asOptionalInput<String>(agentPublicKeyCertificate),
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      distribution = pulumi.Input.asOptionalInput<String>(distribution),
      identity = pulumi.Input.asOptionalInput<ClusterIdentity>(identity),
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
      'agentPublicKeyCertificate': ?agentPublicKeyCertificate,
      'agentVersion': ?agentVersion,
      'distribution': ?distribution,
      'identity': ?pulumi.Input.mapOptionalInputValue<ClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
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

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      agentPublicKeyCertificate: map['agentPublicKeyCertificate'] == null ? null : pulumi.Output.create<String>(map['agentPublicKeyCertificate'] as String),
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      distribution: map['distribution'] == null ? null : pulumi.Output.create<String>(map['distribution'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ClusterIdentity>(ClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
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

