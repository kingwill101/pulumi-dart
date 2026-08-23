// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_settings.dart';
import 'cluster_datastore_mount_config.dart';
import 'cluster_node_type_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Configuration of the autoscaling applied to this cluster
  /// Structure is documented below.
  final pulumi.Input<ClusterAutoscalingSettings>? autoscalingSettings;
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
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
  /// True if the cluster is a management cluster; false otherwise.
  /// There can only be one management cluster in a private cloud and it has to be the first one.
  final pulumi.Input<bool>? management;
  /// The ID of the Cluster.
  final pulumi.Input<String>? name;
  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  /// Structure is documented below.
  final pulumi.Input<List<ClusterNodeTypeConfig>>? nodeTypeConfigs;
  /// The resource name of the private cloud to create a new cluster in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String>? parent;
  /// State of the Cluster.
  final pulumi.Input<String>? state;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ClusterState].
  /// [autoscalingSettings] Configuration of the autoscaling applied to this cluster
  /// [createTime] Creation time of this resource.
  /// [datastoreMountConfigs] Optional. Configuration to mount a datastore.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [management] True if the cluster is a management cluster; false otherwise.
  /// [name] The ID of the Cluster.
  /// [nodeTypeConfigs] The map of cluster node types in this cluster,
  /// [parent] The resource name of the private cloud to create a new cluster in.
  /// [state] State of the Cluster.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last updated time of this resource.
  const ClusterState({
    this.autoscalingSettings,
    this.createTime,
    this.datastoreMountConfigs,
    this.deletionPolicy,
    this.management,
    this.name,
    this.nodeTypeConfigs,
    this.parent,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSettings': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingSettings, Map<String, dynamic>>(autoscalingSettings, (value) => value.toMap()),
      'createTime': ?createTime,
      'datastoreMountConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterDatastoreMountConfig>, List<Map<String, dynamic>>>(datastoreMountConfigs, (value) => pulumi.Input.encodeList<ClusterDatastoreMountConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'management': ?management,
      'name': ?name,
      'nodeTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeTypeConfig>, List<Map<String, dynamic>>>(nodeTypeConfigs, (value) => pulumi.Input.encodeList<ClusterNodeTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': ?parent,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      autoscalingSettings: (() { final guardedValue = map['autoscalingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutoscalingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datastoreMountConfigs: (() { final guardedValue = map['datastoreMountConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterDatastoreMountConfig>(guardedValue, (value) => ClusterDatastoreMountConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTypeConfigs: (() { final guardedValue = map['nodeTypeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeTypeConfig>(guardedValue, (value) => ClusterNodeTypeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
