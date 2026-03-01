// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_config.dart';
import 'vmware_node_pool_autoscaling_config.dart';

/// {@template pulumi_gkeonprem_v1_vmware_node_pool_args_doc}
/// The set of arguments for VmwareNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_vmware_node_pool_args_doc}
class VmwareNodePoolArgs {
  /// Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The node configuration of the node pool.
  final pulumi.Input<VmwareNodeConfig> config;
  /// The display name for the node pool.
  final pulumi.Input<String>? displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of this node pool.
  final pulumi.Input<String>? name;
  /// Node pool autoscaling config for the node pool.
  final pulumi.Input<VmwareNodePoolAutoscalingConfig>? nodePoolAutoscaling;
  /// Anthos version for the node pool. Defaults to the user cluster version.
  final pulumi.Input<String>? onPremVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareClusterId;
  /// The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  final pulumi.Input<String>? vmwareNodePoolId;

  /// Creates a new [VmwareNodePoolArgs].
  /// [annotations] Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [config] The node configuration of the node pool.
  /// [displayName] The display name for the node pool.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. Allows clients to perform consistent read-modify-writes through optimistic concurrency control.
  /// [location] Optional.
  /// [name] Immutable. The resource name of this node pool.
  /// [nodePoolAutoscaling] Node pool autoscaling config for the node pool.
  /// [onPremVersion] Anthos version for the node pool. Defaults to the user cluster version.
  /// [project] Optional.
  /// [vmwareClusterId] Required.
  /// [vmwareNodePoolId] The ID to use for the node pool, which will become the final component of the node pool's resource name. This value must be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/rfc1123) format. The value must not be permitted to be a UUID (or UUID-like: anything matching /^[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$/i).
  VmwareNodePoolArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<VmwareNodeConfig> config,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<VmwareNodePoolAutoscalingConfig>? nodePoolAutoscaling,
    pulumi.Output<String>? onPremVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> vmwareClusterId,
    pulumi.Output<String>? vmwareNodePoolId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      config = pulumi.Input.asInput<VmwareNodeConfig>(config),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodePoolAutoscaling = pulumi.Input.asOptionalInput<VmwareNodePoolAutoscalingConfig>(nodePoolAutoscaling),
      onPremVersion = pulumi.Input.asOptionalInput<String>(onPremVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      vmwareClusterId = pulumi.Input.asInput<String>(vmwareClusterId),
      vmwareNodePoolId = pulumi.Input.asOptionalInput<String>(vmwareNodePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'config': pulumi.Input.mapInputValue<VmwareNodeConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'displayName': ?displayName,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'nodePoolAutoscaling': ?pulumi.Input.mapOptionalInputValue<VmwareNodePoolAutoscalingConfig, Map<String, dynamic>>(nodePoolAutoscaling, (value) => value.toMap()),
      'onPremVersion': ?onPremVersion,
      'project': ?project,
      'vmwareClusterId': vmwareClusterId,
      'vmwareNodePoolId': ?vmwareNodePoolId,
    };
  }

  factory VmwareNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return VmwareNodePoolArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      config: pulumi.Output.create<VmwareNodeConfig>(VmwareNodeConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodePoolAutoscaling: map['nodePoolAutoscaling'] == null ? null : pulumi.Output.create<VmwareNodePoolAutoscalingConfig>(VmwareNodePoolAutoscalingConfig.fromMap((map['nodePoolAutoscaling'] as Map).cast<String, dynamic>())),
      onPremVersion: map['onPremVersion'] == null ? null : pulumi.Output.create<String>(map['onPremVersion'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vmwareClusterId: pulumi.Output.create<String>(map['vmwareClusterId'] as String),
      vmwareNodePoolId: map['vmwareNodePoolId'] == null ? null : pulumi.Output.create<String>(map['vmwareNodePoolId'] as String),
    );
  }
}

