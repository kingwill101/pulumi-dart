// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_cluster_identity.dart';
import 'inference_cluster_ssl.dart';

/// {@template pulumi_machinelearning_inference_cluster_inference_cluster_args_doc}
/// The set of arguments for InferenceCluster.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_inference_cluster_inference_cluster_args_doc}
class InferenceClusterArgs {
  /// The purpose of the Inference Cluster. Options are `DevTest`, `DenseProd` and `FastProd`. If used for Development or Testing, use `DevTest` here. Default purpose is `FastProd`, which is recommended for production workloads. Changing this forces a new Machine Learning Inference Cluster to be created.
  ///
  /// &gt; **Note:** When creating or attaching a cluster, if the cluster will be used for production (`cluster_purpose = "FastProd"`), then it must contain at least 12 virtual CPUs. The number of virtual CPUs can be calculated by multiplying the number of nodes in the cluster by the number of cores provided by the VM size selected. For example, if you use a VM size of "Standard_D3_v2", which has 4 virtual cores, then you should select 3 or greater as the number of nodes.
  final pulumi.Input<String>? clusterPurpose;

  /// The description of the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? description;

  /// An `identity` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<InferenceClusterIdentity>? identity;

  /// The ID of the Kubernetes Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String> kubernetesClusterId;

  /// The Azure Region where the Machine Learning Inference Cluster should exist. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? location;

  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String> machineLearningWorkspaceId;

  /// The name which should be used for this Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? name;

  /// A `ssl` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<InferenceClusterSsl>? ssl;

  /// A mapping of tags which should be assigned to the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InferenceClusterArgs].
  /// [clusterPurpose] The purpose of the Inference Cluster. Options are `DevTest`, `DenseProd` and `FastProd`. If used for Development or Testing, use `DevTest` here. Default purpose is `FastProd`, which is recommended for production workloads. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [description] The description of the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [kubernetesClusterId] The ID of the Kubernetes Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [location] The Azure Region where the Machine Learning Inference Cluster should exist. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [name] The name which should be used for this Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [ssl] A `ssl` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  InferenceClusterArgs({
    this.clusterPurpose,
    this.description,
    this.identity,
    required this.kubernetesClusterId,
    this.location,
    required this.machineLearningWorkspaceId,
    this.name,
    this.ssl,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterPurpose': ?clusterPurpose,
      'description': ?description,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            InferenceClusterIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'kubernetesClusterId': kubernetesClusterId,
      'location': ?location,
      'machineLearningWorkspaceId': machineLearningWorkspaceId,
      'name': ?name,
      'ssl':
          ?pulumi.Input.mapOptionalInputValue<
            InferenceClusterSsl,
            Map<String, dynamic>
          >(ssl, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory InferenceClusterArgs.fromMap(Map<String, dynamic> map) {
    return InferenceClusterArgs(
      clusterPurpose: (() {
        final guardedValue = map['clusterPurpose'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InferenceClusterIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kubernetesClusterId: pulumi.Input.fromValue(
        map['kubernetesClusterId'] as String,
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineLearningWorkspaceId: pulumi.Input.fromValue(
        map['machineLearningWorkspaceId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ssl: (() {
        final guardedValue = map['ssl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InferenceClusterSsl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
