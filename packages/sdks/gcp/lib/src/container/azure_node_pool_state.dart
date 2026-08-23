// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_node_pool_autoscaling.dart';
import 'azure_node_pool_config.dart';
import 'azure_node_pool_management.dart';
import 'azure_node_pool_max_pods_constraint.dart';

/// Input properties used for looking up and filtering AzureNodePool resources.
class AzureNodePoolState {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Autoscaler configuration for this node pool.
  final pulumi.Input<AzureNodePoolAutoscaling>? autoscaling;
  /// Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  final pulumi.Input<String>? azureAvailabilityZone;
  /// The azureCluster for the resource
  final pulumi.Input<String>? cluster;
  /// The node configuration of the node pool.
  final pulumi.Input<AzureNodePoolConfig>? config;
  /// Output only. The time at which this node pool was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The Management configuration for this node pool.
  final pulumi.Input<AzureNodePoolManagement>? management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<AzureNodePoolMaxPodsConstraint>? maxPodsConstraint;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Output only. If set, there are currently pending changes to the node pool.
  final pulumi.Input<bool>? reconciling;
  /// Output only. The current state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  final pulumi.Input<String>? state;
  /// The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  final pulumi.Input<String>? subnetId;
  /// Output only. A globally unique identifier for the node pool.
  final pulumi.Input<String>? uid;
  /// Output only. The time at which this node pool was last updated.
  final pulumi.Input<String>? updateTime;
  /// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureNodePoolState].
  /// [annotations] Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [autoscaling] Autoscaler configuration for this node pool.
  /// [azureAvailabilityZone] Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  /// [cluster] The azureCluster for the resource
  /// [config] The node configuration of the node pool.
  /// [createTime] Output only. The time at which this node pool was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [etag] Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [location] The location for the resource
  /// [management] The Management configuration for this node pool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [reconciling] Output only. If set, there are currently pending changes to the node pool.
  /// [state] Output only. The current state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  /// [subnetId] The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  /// [uid] Output only. A globally unique identifier for the node pool.
  /// [updateTime] Output only. The time at which this node pool was last updated.
  /// [version] The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  const AzureNodePoolState({
    this.annotations,
    this.autoscaling,
    this.azureAvailabilityZone,
    this.cluster,
    this.config,
    this.createTime,
    this.deletionPolicy,
    this.effectiveAnnotations,
    this.etag,
    this.location,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.project,
    this.reconciling,
    this.state,
    this.subnetId,
    this.uid,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'azureAvailabilityZone': ?azureAvailabilityZone,
      'cluster': ?cluster,
      'config': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'management': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsConstraint': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolMaxPodsConstraint, Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'reconciling': ?reconciling,
      'state': ?state,
      'subnetId': ?subnetId,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory AzureNodePoolState.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureNodePoolAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAvailabilityZone: (() { final guardedValue = map['azureAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureNodePoolManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxPodsConstraint: (() { final guardedValue = map['maxPodsConstraint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureNodePoolMaxPodsConstraint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
