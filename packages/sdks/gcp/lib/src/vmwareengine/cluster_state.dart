// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_settings.dart';
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
  /// [management] True if the cluster is a management cluster; false otherwise.
  /// [name] The ID of the Cluster.
  /// [nodeTypeConfigs] The map of cluster node types in this cluster,
  /// [parent] The resource name of the private cloud to create a new cluster in.
  /// [state] State of the Cluster.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last updated time of this resource.
  ClusterState({
    this.autoscalingSettings,
    this.createTime,
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
      autoscalingSettings: map['autoscalingSettings'] == null ? null : (ClusterAutoscalingSettings.fromMap((map['autoscalingSettings'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      management: map['management'] == null ? null : (map['management'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeTypeConfigs: map['nodeTypeConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterNodeTypeConfig>(map['nodeTypeConfigs'], (value) => ClusterNodeTypeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

