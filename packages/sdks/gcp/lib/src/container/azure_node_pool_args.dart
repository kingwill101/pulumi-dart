// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_node_pool_autoscaling.dart';
import 'azure_node_pool_config.dart';
import 'azure_node_pool_management.dart';
import 'azure_node_pool_max_pods_constraint.dart';

/// {@template pulumi_container_azure_node_pool_azure_node_pool_args_doc}
/// The set of arguments for AzureNodePool.
/// {@endtemplate}
/// {@macro pulumi_container_azure_node_pool_azure_node_pool_args_doc}
class AzureNodePoolArgs {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Autoscaler configuration for this node pool.
  final pulumi.Input<AzureNodePoolAutoscaling> autoscaling;
  /// Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  final pulumi.Input<String?>? azureAvailabilityZone;
  /// The azureCluster for the resource
  final pulumi.Input<String> cluster;
  /// The node configuration of the node pool.
  final pulumi.Input<AzureNodePoolConfig> config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The Management configuration for this node pool.
  final pulumi.Input<AzureNodePoolManagement?>? management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<AzureNodePoolMaxPodsConstraint> maxPodsConstraint;
  /// The name of this resource.
  final pulumi.Input<String?>? name;
  /// The project for the resource
  final pulumi.Input<String?>? project;
  /// The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  final pulumi.Input<String> subnetId;
  /// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  final pulumi.Input<String> version;

  /// Creates a new [AzureNodePoolArgs].
  /// [annotations] Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [autoscaling] Autoscaler configuration for this node pool.
  /// [azureAvailabilityZone] Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  /// [cluster] The azureCluster for the resource
  /// [config] The node configuration of the node pool.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [location] The location for the resource
  /// [management] The Management configuration for this node pool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [subnetId] The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  /// [version] The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  const AzureNodePoolArgs({
    this.annotations,
    required this.autoscaling,
    this.azureAvailabilityZone,
    required this.cluster,
    required this.config,
    this.deletionPolicy,
    required this.location,
    this.management,
    required this.maxPodsConstraint,
    this.name,
    this.project,
    required this.subnetId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'autoscaling': pulumi.Input.mapInputValue<AzureNodePoolAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'azureAvailabilityZone': ?azureAvailabilityZone,
      'cluster': cluster,
      'config': pulumi.Input.mapInputValue<AzureNodePoolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'management': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsConstraint': pulumi.Input.mapInputValue<AzureNodePoolMaxPodsConstraint, Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'subnetId': subnetId,
      'version': version,
    };
  }

  factory AzureNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      autoscaling: pulumi.Input.fromValue(AzureNodePoolAutoscaling.fromMap((map['autoscaling']! as Map).cast<String, dynamic>())),
      azureAvailabilityZone: (() { final guardedValue = map['azureAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      config: pulumi.Input.fromValue(AzureNodePoolConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureNodePoolManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxPodsConstraint: pulumi.Input.fromValue(AzureNodePoolMaxPodsConstraint.fromMap((map['maxPodsConstraint']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
