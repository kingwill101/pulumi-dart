// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config.dart';
import 'virtual_cluster_config.dart';

/// {@template pulumi_dataproc_v1_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_cluster_args_doc}
class ClusterArgs {
  /// Optional. Failure action when primary worker creation fails.
  final pulumi.Input<String>? actionOnFailedPrimaryWorkers;
  /// The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  final pulumi.Input<String> clusterName;
  /// Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  final pulumi.Input<ClusterConfig>? config;
  /// Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud Platform project ID that the cluster belongs to.
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// Optional. A unique ID used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  final pulumi.Input<VirtualClusterConfig>? virtualClusterConfig;

  /// Creates a new [ClusterArgs].
  /// [actionOnFailedPrimaryWorkers] Optional. Failure action when primary worker creation fails.
  /// [clusterName] The cluster name, which must be unique within a project. The name must start with a lowercase letter, and can contain up to 51 lowercase letters, numbers, and hyphens. It cannot end with a hyphen. The name of a deleted cluster can be reused.
  /// [config] Optional. The cluster config for a cluster of Compute Engine Instances. Note that Dataproc may set default values, and values may change when clusters are updated.Exactly one of ClusterConfig or VirtualClusterConfig must be specified.
  /// [labels] Optional. The labels to associate with this cluster. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [project] The Google Cloud Platform project ID that the cluster belongs to.
  /// [region] Required.
  /// [requestId] Optional. A unique ID used to identify the request. If the server receives two CreateClusterRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateClusterRequest)s with the same id, then the second request will be ignored and the first google.longrunning.Operation created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [virtualClusterConfig] Optional. The virtual cluster config is used when creating a Dataproc cluster that does not directly control the underlying compute resources, for example, when creating a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/guides/dpgke/dataproc-gke-overview). Dataproc may set default values, and values may change when clusters are updated. Exactly one of config or virtual_cluster_config must be specified.
  ClusterArgs({
    pulumi.Output<String>? actionOnFailedPrimaryWorkers,
    required pulumi.Output<String> clusterName,
    pulumi.Output<ClusterConfig>? config,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
    pulumi.Output<VirtualClusterConfig>? virtualClusterConfig,
  }) :
      actionOnFailedPrimaryWorkers = pulumi.Input.asOptionalInput<String>(actionOnFailedPrimaryWorkers),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      config = pulumi.Input.asOptionalInput<ClusterConfig>(config),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      virtualClusterConfig = pulumi.Input.asOptionalInput<VirtualClusterConfig>(virtualClusterConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnFailedPrimaryWorkers': ?actionOnFailedPrimaryWorkers,
      'clusterName': clusterName,
      'config': ?pulumi.Input.mapOptionalInputValue<ClusterConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': ?labels,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'virtualClusterConfig': ?pulumi.Input.mapOptionalInputValue<VirtualClusterConfig, Map<String, dynamic>>(virtualClusterConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      actionOnFailedPrimaryWorkers: map['actionOnFailedPrimaryWorkers'] == null ? null : pulumi.Output.create<String>(map['actionOnFailedPrimaryWorkers'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<ClusterConfig>(ClusterConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      virtualClusterConfig: map['virtualClusterConfig'] == null ? null : pulumi.Output.create<VirtualClusterConfig>(VirtualClusterConfig.fromMap((map['virtualClusterConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

