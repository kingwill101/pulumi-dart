// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_settings.dart';
import 'cluster_node_type_config.dart';

/// {@template pulumi_vmwareengine_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_cluster_cluster_args_doc}
class ClusterArgs {
  /// Configuration of the autoscaling applied to this cluster
  /// Structure is documented below.
  final pulumi.Input<ClusterAutoscalingSettings>? autoscalingSettings;
  /// The ID of the Cluster.
  final pulumi.Input<String>? name;
  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  /// Structure is documented below.
  final pulumi.Input<List<ClusterNodeTypeConfig>>? nodeTypeConfigs;
  /// The resource name of the private cloud to create a new cluster in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String> parent;

  /// Creates a new [ClusterArgs].
  /// [autoscalingSettings] Configuration of the autoscaling applied to this cluster
  /// [name] The ID of the Cluster.
  /// [nodeTypeConfigs] The map of cluster node types in this cluster,
  /// [parent] The resource name of the private cloud to create a new cluster in.
  ClusterArgs({
    this.autoscalingSettings,
    this.name,
    this.nodeTypeConfigs,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSettings': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingSettings, Map<String, dynamic>>(autoscalingSettings, (value) => value.toMap()),
      'name': ?name,
      'nodeTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeTypeConfig>, List<Map<String, dynamic>>>(nodeTypeConfigs, (value) => pulumi.Input.encodeList<ClusterNodeTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': parent,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      autoscalingSettings: map['autoscalingSettings'] == null ? null : (ClusterAutoscalingSettings.fromMap((map['autoscalingSettings']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeTypeConfigs: map['nodeTypeConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterNodeTypeConfig>(map['nodeTypeConfigs']!, (value) => ClusterNodeTypeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parent: (map['parent'] as String).input(),
    );
  }
}

