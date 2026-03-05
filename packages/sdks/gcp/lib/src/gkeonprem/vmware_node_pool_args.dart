// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_config.dart';
import 'vmware_node_pool_node_pool_autoscaling.dart';

/// {@template pulumi_gkeonprem_v_mware_node_pool_vmware_node_pool_args_doc}
/// The set of arguments for VMwareNodePool.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v_mware_node_pool_vmware_node_pool_args_doc}
class VMwareNodePoolArgs {
  /// Annotations on the node Pool.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The node configuration of the node pool.
  /// Structure is documented below.
  final pulumi.Input<VMwareNodePoolConfig> config;
  /// The display name for the node pool.
  final pulumi.Input<String>? displayName;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The vmware node pool name.
  final pulumi.Input<String>? name;
  /// Node Pool autoscaling config for the node pool.
  /// Structure is documented below.
  final pulumi.Input<VMwareNodePoolNodePoolAutoscaling>? nodePoolAutoscaling;
  /// Anthos version for the node pool. Defaults to the user cluster version.
  final pulumi.Input<String>? onPremVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The cluster this node pool belongs to.
  final pulumi.Input<String> vmwareCluster;

  /// Creates a new [VMwareNodePoolArgs].
  /// [annotations] Annotations on the node Pool.
  /// [config] The node configuration of the node pool.
  /// [displayName] The display name for the node pool.
  /// [location] The location of the resource.
  /// [name] The vmware node pool name.
  /// [nodePoolAutoscaling] Node Pool autoscaling config for the node pool.
  /// [onPremVersion] Anthos version for the node pool. Defaults to the user cluster version.
  /// [project] The ID of the project in which the resource belongs.
  /// [vmwareCluster] The cluster this node pool belongs to.
  VMwareNodePoolArgs({
    this.annotations,
    required this.config,
    this.displayName,
    required this.location,
    this.name,
    this.nodePoolAutoscaling,
    this.onPremVersion,
    this.project,
    required this.vmwareCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'config': pulumi.Input.mapInputValue<VMwareNodePoolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'displayName': ?displayName,
      'location': location,
      'name': ?name,
      'nodePoolAutoscaling': ?pulumi.Input.mapOptionalInputValue<VMwareNodePoolNodePoolAutoscaling, Map<String, dynamic>>(nodePoolAutoscaling, (value) => value.toMap()),
      'onPremVersion': ?onPremVersion,
      'project': ?project,
      'vmwareCluster': vmwareCluster,
    };
  }

  factory VMwareNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      config: pulumi.Input.fromValue(VMwareNodePoolConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePoolAutoscaling: (() { final guardedValue = map['nodePoolAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMwareNodePoolNodePoolAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremVersion: (() { final guardedValue = map['onPremVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareCluster: pulumi.Input.fromValue(map['vmwareCluster'] as String),
    );
  }
}

