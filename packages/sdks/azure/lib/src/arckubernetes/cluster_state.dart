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
  const ClusterState({
    this.agentPublicKeyCertificate,
    this.agentVersion,
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
      agentPublicKeyCertificate: (() { final guardedValue = map['agentPublicKeyCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
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

