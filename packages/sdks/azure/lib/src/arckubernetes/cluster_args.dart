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
  ClusterArgs({
    required pulumi.Output<String> agentPublicKeyCertificate,
    required pulumi.Output<ClusterIdentity> identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      agentPublicKeyCertificate = pulumi.Input.asInput<String>(agentPublicKeyCertificate),
      identity = pulumi.Input.asInput<ClusterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      agentPublicKeyCertificate: pulumi.Output.create<String>(map['agentPublicKeyCertificate'] as String),
      identity: pulumi.Output.create<ClusterIdentity>(ClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

