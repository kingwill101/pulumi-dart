// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_node_pool_autoscaling.dart';
import 'aws_node_pool_config.dart';
import 'aws_node_pool_kubelet_config.dart';
import 'aws_node_pool_management.dart';
import 'aws_node_pool_max_pods_constraint.dart';
import 'aws_node_pool_update_settings.dart';

/// Input properties used for looking up and filtering AwsNodePool resources.
class AwsNodePoolState {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Autoscaler configuration for this node pool.
  final pulumi.Input<AwsNodePoolAutoscaling>? autoscaling;
  /// The awsCluster for the resource
  final pulumi.Input<String>? cluster;
  /// The configuration of the node pool.
  final pulumi.Input<AwsNodePoolConfig>? config;
  /// Output only. The time at which this node pool was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The kubelet configuration for the node pool.
  final pulumi.Input<AwsNodePoolKubeletConfig>? kubeletConfig;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The Management configuration for this node pool.
  final pulumi.Input<AwsNodePoolManagement>? management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<AwsNodePoolMaxPodsConstraint>? maxPodsConstraint;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Output only. If set, there are currently changes in flight to the node pool.
  final pulumi.Input<bool>? reconciling;
  /// Output only. The lifecycle state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  final pulumi.Input<String>? state;
  /// The subnet where the node pool node run.
  final pulumi.Input<String>? subnetId;
  /// Output only. A globally unique identifier for the node pool.
  final pulumi.Input<String>? uid;
  /// Optional. Update settings control the speed and disruption of the node pool update.
  final pulumi.Input<AwsNodePoolUpdateSettings>? updateSettings;
  /// Output only. The time at which this node pool was last updated.
  final pulumi.Input<String>? updateTime;
  /// The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  final pulumi.Input<String>? version;

  /// Creates a new [AwsNodePoolState].
  /// [annotations] Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [autoscaling] Autoscaler configuration for this node pool.
  /// [cluster] The awsCluster for the resource
  /// [config] The configuration of the node pool.
  /// [createTime] Output only. The time at which this node pool was created.
  /// [effectiveAnnotations] Optional.
  /// [etag] Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [kubeletConfig] The kubelet configuration for the node pool.
  /// [location] The location for the resource
  /// [management] The Management configuration for this node pool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [reconciling] Output only. If set, there are currently changes in flight to the node pool.
  /// [state] Output only. The lifecycle state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  /// [subnetId] The subnet where the node pool node run.
  /// [uid] Output only. A globally unique identifier for the node pool.
  /// [updateSettings] Optional. Update settings control the speed and disruption of the node pool update.
  /// [updateTime] Output only. The time at which this node pool was last updated.
  /// [version] The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  AwsNodePoolState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<AwsNodePoolAutoscaling>? autoscaling,
    pulumi.Output<String>? cluster,
    pulumi.Output<AwsNodePoolConfig>? config,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? etag,
    pulumi.Output<AwsNodePoolKubeletConfig>? kubeletConfig,
    pulumi.Output<String>? location,
    pulumi.Output<AwsNodePoolManagement>? management,
    pulumi.Output<AwsNodePoolMaxPodsConstraint>? maxPodsConstraint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? uid,
    pulumi.Output<AwsNodePoolUpdateSettings>? updateSettings,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? version,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      autoscaling = pulumi.Input.asOptionalInput<AwsNodePoolAutoscaling>(autoscaling),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      config = pulumi.Input.asOptionalInput<AwsNodePoolConfig>(config),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      kubeletConfig = pulumi.Input.asOptionalInput<AwsNodePoolKubeletConfig>(kubeletConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      management = pulumi.Input.asOptionalInput<AwsNodePoolManagement>(management),
      maxPodsConstraint = pulumi.Input.asOptionalInput<AwsNodePoolMaxPodsConstraint>(maxPodsConstraint),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateSettings = pulumi.Input.asOptionalInput<AwsNodePoolUpdateSettings>(updateSettings),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'cluster': ?cluster,
      'config': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolKubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'location': ?location,
      'management': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsConstraint': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolMaxPodsConstraint, Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'reconciling': ?reconciling,
      'state': ?state,
      'subnetId': ?subnetId,
      'uid': ?uid,
      'updateSettings': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolUpdateSettings, Map<String, dynamic>>(updateSettings, (value) => value.toMap()),
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory AwsNodePoolState.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      autoscaling: map['autoscaling'] == null ? null : pulumi.Output.create<AwsNodePoolAutoscaling>(AwsNodePoolAutoscaling.fromMap((map['autoscaling'] as Map).cast<String, dynamic>())),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<AwsNodePoolConfig>(AwsNodePoolConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      kubeletConfig: map['kubeletConfig'] == null ? null : pulumi.Output.create<AwsNodePoolKubeletConfig>(AwsNodePoolKubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      management: map['management'] == null ? null : pulumi.Output.create<AwsNodePoolManagement>(AwsNodePoolManagement.fromMap((map['management'] as Map).cast<String, dynamic>())),
      maxPodsConstraint: map['maxPodsConstraint'] == null ? null : pulumi.Output.create<AwsNodePoolMaxPodsConstraint>(AwsNodePoolMaxPodsConstraint.fromMap((map['maxPodsConstraint'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateSettings: map['updateSettings'] == null ? null : pulumi.Output.create<AwsNodePoolUpdateSettings>(AwsNodePoolUpdateSettings.fromMap((map['updateSettings'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

