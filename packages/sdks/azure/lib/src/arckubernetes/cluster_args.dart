// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_identity.dart';

/// {@template pulumi_arckubernetes_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_arckubernetes_cluster_cluster_args_doc}
class ClusterArgs {
  /// Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String> agentPublicKeyCertificate;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<ClusterIdentity> identity;
  /// Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Kubernetes Cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [agentPublicKeyCertificate] Specifies the base64-encoded public certificate used by the agent to do the initial handshake to the backend services in Azure. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [location] Specifies the Azure Region where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [name] Specifies the name which should be used for this Arc Kubernetes Cluster. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Arc Kubernetes Cluster should exist. Changing this forces a new Arc Kubernetes Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Arc Kubernetes Cluster.
  const ClusterArgs({
    required this.agentPublicKeyCertificate,
    required this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPublicKeyCertificate': agentPublicKeyCertificate,
      'identity': pulumi.Input.mapInputValue<ClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      agentPublicKeyCertificate: pulumi.Input.fromValue(map['agentPublicKeyCertificate'] as String),
      identity: pulumi.Input.fromValue(ClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
