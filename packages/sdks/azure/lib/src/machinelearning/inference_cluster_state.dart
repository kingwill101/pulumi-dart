// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_cluster_identity.dart';
import 'inference_cluster_ssl.dart';

/// Input properties used for looking up and filtering InferenceCluster resources.
class InferenceClusterState {
  /// The purpose of the Inference Cluster. Options are `DevTest`, `DenseProd` and `FastProd`. If used for Development or Testing, use `DevTest` here. Default purpose is `FastProd`, which is recommended for production workloads. Changing this forces a new Machine Learning Inference Cluster to be created.
  ///
  /// > **Note:** When creating or attaching a cluster, if the cluster will be used for production (`cluster_purpose = "FastProd"`), then it must contain at least 12 virtual CPUs. The number of virtual CPUs can be calculated by multiplying the number of nodes in the cluster by the number of cores provided by the VM size selected. For example, if you use a VM size of "Standard_D3_v2", which has 4 virtual cores, then you should select 3 or greater as the number of nodes.
  final pulumi.Input<String>? clusterPurpose;
  /// The description of the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? description;
  /// An `identity` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<InferenceClusterIdentity>? identity;
  /// The ID of the Kubernetes Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? kubernetesClusterId;
  /// The Azure Region where the Machine Learning Inference Cluster should exist. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<String>? name;
  /// A `ssl` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<InferenceClusterSsl>? ssl;
  /// A mapping of tags which should be assigned to the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InferenceClusterState].
  /// [clusterPurpose] The purpose of the Inference Cluster. Options are `DevTest`, `DenseProd` and `FastProd`. If used for Development or Testing, use `DevTest` here. Default purpose is `FastProd`, which is recommended for production workloads. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [description] The description of the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [kubernetesClusterId] The ID of the Kubernetes Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [location] The Azure Region where the Machine Learning Inference Cluster should exist. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [name] The name which should be used for this Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [ssl] A `ssl` block as defined below. Changing this forces a new Machine Learning Inference Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Inference Cluster. Changing this forces a new Machine Learning Inference Cluster to be created.
  InferenceClusterState({
    pulumi.Output<String>? clusterPurpose,
    pulumi.Output<String>? description,
    pulumi.Output<InferenceClusterIdentity>? identity,
    pulumi.Output<String>? kubernetesClusterId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? machineLearningWorkspaceId,
    pulumi.Output<String>? name,
    pulumi.Output<InferenceClusterSsl>? ssl,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterPurpose = pulumi.Input.asOptionalInput<String>(clusterPurpose),
      description = pulumi.Input.asOptionalInput<String>(description),
      identity = pulumi.Input.asOptionalInput<InferenceClusterIdentity>(identity),
      kubernetesClusterId = pulumi.Input.asOptionalInput<String>(kubernetesClusterId),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineLearningWorkspaceId = pulumi.Input.asOptionalInput<String>(machineLearningWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      ssl = pulumi.Input.asOptionalInput<InferenceClusterSsl>(ssl),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterPurpose': ?clusterPurpose,
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<InferenceClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kubernetesClusterId': ?kubernetesClusterId,
      'location': ?location,
      'machineLearningWorkspaceId': ?machineLearningWorkspaceId,
      'name': ?name,
      'ssl': ?pulumi.Input.mapOptionalInputValue<InferenceClusterSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory InferenceClusterState.fromMap(Map<String, dynamic> map) {
    return InferenceClusterState(
      clusterPurpose: map['clusterPurpose'] == null ? null : pulumi.Output.create<String>(map['clusterPurpose'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<InferenceClusterIdentity>(InferenceClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kubernetesClusterId: map['kubernetesClusterId'] == null ? null : pulumi.Output.create<String>(map['kubernetesClusterId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineLearningWorkspaceId: map['machineLearningWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['machineLearningWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ssl: map['ssl'] == null ? null : pulumi.Output.create<InferenceClusterSsl>(InferenceClusterSsl.fromMap((map['ssl'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

