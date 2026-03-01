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
    pulumi.Output<ClusterAutoscalingSettings>? autoscalingSettings,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? management,
    pulumi.Output<String>? name,
    pulumi.Output<List<ClusterNodeTypeConfig>>? nodeTypeConfigs,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      autoscalingSettings = pulumi.Input.asOptionalInput<ClusterAutoscalingSettings>(autoscalingSettings),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      management = pulumi.Input.asOptionalInput<bool>(management),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeTypeConfigs = pulumi.Input.asOptionalInput<List<ClusterNodeTypeConfig>>(nodeTypeConfigs),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      autoscalingSettings: map['autoscalingSettings'] == null ? null : pulumi.Output.create<ClusterAutoscalingSettings>(ClusterAutoscalingSettings.fromMap((map['autoscalingSettings'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      management: map['management'] == null ? null : pulumi.Output.create<bool>(map['management'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeTypeConfigs: map['nodeTypeConfigs'] == null ? null : pulumi.Output.create<List<ClusterNodeTypeConfig>>(pulumi.Input.decodeList<ClusterNodeTypeConfig>(map['nodeTypeConfigs'], (value) => ClusterNodeTypeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

