// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_node_pool_autoscaling.dart';
import 'aws_node_pool_config.dart';
import 'aws_node_pool_kubelet_config.dart';
import 'aws_node_pool_management.dart';
import 'aws_node_pool_max_pods_constraint.dart';
import 'aws_node_pool_update_settings.dart';

/// {@template pulumi_container_aws_node_pool_aws_node_pool_args_doc}
/// The set of arguments for AwsNodePool.
/// {@endtemplate}
/// {@macro pulumi_container_aws_node_pool_aws_node_pool_args_doc}
class AwsNodePoolArgs {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Autoscaler configuration for this node pool.
  final pulumi.Input<AwsNodePoolAutoscaling> autoscaling;
  /// The awsCluster for the resource
  final pulumi.Input<String> cluster;
  /// The configuration of the node pool.
  final pulumi.Input<AwsNodePoolConfig> config;
  /// The kubelet configuration for the node pool.
  final pulumi.Input<AwsNodePoolKubeletConfig>? kubeletConfig;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The Management configuration for this node pool.
  final pulumi.Input<AwsNodePoolManagement>? management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<AwsNodePoolMaxPodsConstraint> maxPodsConstraint;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// The subnet where the node pool node run.
  final pulumi.Input<String> subnetId;
  /// Optional. Update settings control the speed and disruption of the node pool update.
  final pulumi.Input<AwsNodePoolUpdateSettings>? updateSettings;
  /// The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  final pulumi.Input<String> version;

  /// Creates a new [AwsNodePoolArgs].
  /// [annotations] Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [autoscaling] Autoscaler configuration for this node pool.
  /// [cluster] The awsCluster for the resource
  /// [config] The configuration of the node pool.
  /// [kubeletConfig] The kubelet configuration for the node pool.
  /// [location] The location for the resource
  /// [management] The Management configuration for this node pool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [subnetId] The subnet where the node pool node run.
  /// [updateSettings] Optional. Update settings control the speed and disruption of the node pool update.
  /// [version] The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAwsServerConfig.
  AwsNodePoolArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<AwsNodePoolAutoscaling> autoscaling,
    required pulumi.Output<String> cluster,
    required pulumi.Output<AwsNodePoolConfig> config,
    pulumi.Output<AwsNodePoolKubeletConfig>? kubeletConfig,
    required pulumi.Output<String> location,
    pulumi.Output<AwsNodePoolManagement>? management,
    required pulumi.Output<AwsNodePoolMaxPodsConstraint> maxPodsConstraint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> subnetId,
    pulumi.Output<AwsNodePoolUpdateSettings>? updateSettings,
    required pulumi.Output<String> version,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      autoscaling = pulumi.Input.asInput<AwsNodePoolAutoscaling>(autoscaling),
      cluster = pulumi.Input.asInput<String>(cluster),
      config = pulumi.Input.asInput<AwsNodePoolConfig>(config),
      kubeletConfig = pulumi.Input.asOptionalInput<AwsNodePoolKubeletConfig>(kubeletConfig),
      location = pulumi.Input.asInput<String>(location),
      management = pulumi.Input.asOptionalInput<AwsNodePoolManagement>(management),
      maxPodsConstraint = pulumi.Input.asInput<AwsNodePoolMaxPodsConstraint>(maxPodsConstraint),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      updateSettings = pulumi.Input.asOptionalInput<AwsNodePoolUpdateSettings>(updateSettings),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'autoscaling': pulumi.Input.mapInputValue<AwsNodePoolAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'cluster': cluster,
      'config': pulumi.Input.mapInputValue<AwsNodePoolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'kubeletConfig': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolKubeletConfig, Map<String, dynamic>>(kubeletConfig, (value) => value.toMap()),
      'location': location,
      'management': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsConstraint': pulumi.Input.mapInputValue<AwsNodePoolMaxPodsConstraint, Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'subnetId': subnetId,
      'updateSettings': ?pulumi.Input.mapOptionalInputValue<AwsNodePoolUpdateSettings, Map<String, dynamic>>(updateSettings, (value) => value.toMap()),
      'version': version,
    };
  }

  factory AwsNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      autoscaling: pulumi.Output.create<AwsNodePoolAutoscaling>(AwsNodePoolAutoscaling.fromMap((map['autoscaling'] as Map).cast<String, dynamic>())),
      cluster: pulumi.Output.create<String>(map['cluster'] as String),
      config: pulumi.Output.create<AwsNodePoolConfig>(AwsNodePoolConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      kubeletConfig: map['kubeletConfig'] == null ? null : pulumi.Output.create<AwsNodePoolKubeletConfig>(AwsNodePoolKubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      management: map['management'] == null ? null : pulumi.Output.create<AwsNodePoolManagement>(AwsNodePoolManagement.fromMap((map['management'] as Map).cast<String, dynamic>())),
      maxPodsConstraint: pulumi.Output.create<AwsNodePoolMaxPodsConstraint>(AwsNodePoolMaxPodsConstraint.fromMap((map['maxPodsConstraint'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      subnetId: pulumi.Output.create<String>(map['subnetId'] as String),
      updateSettings: map['updateSettings'] == null ? null : pulumi.Output.create<AwsNodePoolUpdateSettings>(AwsNodePoolUpdateSettings.fromMap((map['updateSettings'] as Map).cast<String, dynamic>())),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

