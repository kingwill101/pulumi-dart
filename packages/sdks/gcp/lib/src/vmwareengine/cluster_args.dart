// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_settings.dart';
import 'cluster_datastore_mount_config.dart';
import 'cluster_node_type_config.dart';

/// {@template pulumi_vmwareengine_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_cluster_cluster_args_doc}
class ClusterArgs {
  /// Configuration of the autoscaling applied to this cluster
  /// Structure is documented below.
  final pulumi.Input<ClusterAutoscalingSettings>? autoscalingSettings;
  /// Optional. Configuration to mount a datastore.
  /// Mount can be done along with cluster create or during cluster update
  /// Since service subnet is not configured with ip range on mgmt cluster creation, mount on management cluster is done as update only
  /// for unmount remove 'datastore_mount_config' config from the update of cluster resource
  /// Structure is documented below.
  final pulumi.Input<List<ClusterDatastoreMountConfig>>? datastoreMountConfigs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [datastoreMountConfigs] Optional. Configuration to mount a datastore.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The ID of the Cluster.
  /// [nodeTypeConfigs] The map of cluster node types in this cluster,
  /// [parent] The resource name of the private cloud to create a new cluster in.
  const ClusterArgs({
    this.autoscalingSettings,
    this.datastoreMountConfigs,
    this.deletionPolicy,
    this.name,
    this.nodeTypeConfigs,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSettings': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingSettings, Map<String, dynamic>>(autoscalingSettings, (value) => value.toMap()),
      'datastoreMountConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterDatastoreMountConfig>, List<Map<String, dynamic>>>(datastoreMountConfigs, (value) => pulumi.Input.encodeList<ClusterDatastoreMountConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'nodeTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeTypeConfig>, List<Map<String, dynamic>>>(nodeTypeConfigs, (value) => pulumi.Input.encodeList<ClusterNodeTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': parent,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      autoscalingSettings: (() { final guardedValue = map['autoscalingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutoscalingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datastoreMountConfigs: (() { final guardedValue = map['datastoreMountConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterDatastoreMountConfig>(guardedValue, (value) => ClusterDatastoreMountConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTypeConfigs: (() { final guardedValue = map['nodeTypeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeTypeConfig>(guardedValue, (value) => ClusterNodeTypeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
