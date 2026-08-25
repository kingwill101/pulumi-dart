// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_compute_resource.dart';
import 'cluster_network_resource.dart';
import 'cluster_orchestrator.dart';
import 'cluster_storage_resource.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// ID of the cluster to create. Must start with a lowercase letter,
  /// use only lowercase letters and numbers, and be at most 10 characters long.
  final pulumi.Input<String?>? clusterId;
  /// Compute resources available to the cluster. Keys specify the ID of the
  /// compute resource by which it can be referenced elsewhere, and must conform
  /// to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  /// Structure is documented below.
  final pulumi.Input<List<ClusterComputeResource>?>? computeResources;
  /// Time that the cluster was originally created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-provided description of the cluster.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// [Labels](https://cloud.google.com/compute/docs/labeling-resources) applied
  /// to the cluster. Labels can be used to organize clusters and to filter them
  /// in queries.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. [Relative resource name](https://google.aip.dev/122) of the cluster, in the
  /// format `projects/{project}/locations/{location}/clusters/{cluster}`.
  final pulumi.Input<String?>? name;
  /// Network resources available to the cluster. Must contain at most one value.
  /// Keys specify the ID of the network resource by which it can be referenced
  /// elsewhere, and must conform to
  /// [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  /// Structure is documented below.
  final pulumi.Input<List<ClusterNetworkResource>?>? networkResources;
  /// The component responsible for scheduling and running workloads on the
  /// cluster as well as providing the user interface for interacting with the
  /// cluster at runtime.
  /// Structure is documented below.
  final pulumi.Input<ClusterOrchestrator?>? orchestrator;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Indicates whether changes to the cluster are currently in flight. If this
  /// is `true`, then the current state might not match the cluster's intended
  /// state.
  final pulumi.Input<bool?>? reconciling;
  /// Storage resources available to the cluster. Keys specify the ID of the
  /// storage resource by which it can be referenced elsewhere, and must conform
  /// to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  /// Structure is documented below.
  final pulumi.Input<List<ClusterStorageResource>?>? storageResources;
  /// Time that the cluster was most recently updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ClusterState].
  /// [clusterId] ID of the cluster to create. Must start with a lowercase letter,
  /// [computeResources] Compute resources available to the cluster. Keys specify the ID of the
  /// [createTime] Time that the cluster was originally created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the cluster.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] [Labels](https://cloud.google.com/compute/docs/labeling-resources) applied
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. [Relative resource name](https://google.aip.dev/122) of the cluster, in the
  /// [networkResources] Network resources available to the cluster. Must contain at most one value.
  /// [orchestrator] The component responsible for scheduling and running workloads on the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Indicates whether changes to the cluster are currently in flight. If this
  /// [storageResources] Storage resources available to the cluster. Keys specify the ID of the
  /// [updateTime] Time that the cluster was most recently updated.
  const ClusterState({
    this.clusterId,
    this.computeResources,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.networkResources,
    this.orchestrator,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.storageResources,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'computeResources': ?pulumi.Input.mapOptionalInputValue<List<ClusterComputeResource>, List<Map<String, dynamic>>>(computeResources, (value) => pulumi.Input.encodeList<ClusterComputeResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networkResources': ?pulumi.Input.mapOptionalInputValue<List<ClusterNetworkResource>, List<Map<String, dynamic>>>(networkResources, (value) => pulumi.Input.encodeList<ClusterNetworkResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orchestrator': ?pulumi.Input.mapOptionalInputValue<ClusterOrchestrator, Map<String, dynamic>>(orchestrator, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'storageResources': ?pulumi.Input.mapOptionalInputValue<List<ClusterStorageResource>, List<Map<String, dynamic>>>(storageResources, (value) => pulumi.Input.encodeList<ClusterStorageResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeResources: (() { final guardedValue = map['computeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterComputeResource>(guardedValue, (value) => ClusterComputeResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkResources: (() { final guardedValue = map['networkResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNetworkResource>(guardedValue, (value) => ClusterNetworkResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      orchestrator: (() { final guardedValue = map['orchestrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOrchestrator.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageResources: (() { final guardedValue = map['storageResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterStorageResource>(guardedValue, (value) => ClusterStorageResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
