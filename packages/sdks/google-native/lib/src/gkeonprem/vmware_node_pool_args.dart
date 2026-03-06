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
  const VmwareNodePoolArgs({
    this.annotations,
    required this.config,
    this.displayName,
    this.etag,
    this.location,
    this.name,
    this.nodePoolAutoscaling,
    this.onPremVersion,
    this.project,
    required this.vmwareClusterId,
    this.vmwareNodePoolId,
  });

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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      config: pulumi.Input.fromValue(VmwareNodeConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePoolAutoscaling: (() { final guardedValue = map['nodePoolAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareNodePoolAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremVersion: (() { final guardedValue = map['onPremVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareClusterId: pulumi.Input.fromValue(map['vmwareClusterId'] as String),
      vmwareNodePoolId: (() { final guardedValue = map['vmwareNodePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

