// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_autoscaling_setting.dart';
import 'get_cluster_node_type_config.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final List<GetClusterAutoscalingSetting> autoscalingSettings;
  final String createTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool management;
  final String name;
  final List<GetClusterNodeTypeConfig> nodeTypeConfigs;
  final String parent;
  final String state;
  final String uid;
  final String updateTime;

  /// Creates a new [GetClusterResult].
  /// [autoscalingSettings] Required.
  /// [createTime] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [management] Required.
  /// [name] Required.
  /// [nodeTypeConfigs] Required.
  /// [parent] Required.
  /// [state] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  GetClusterResult({
    required this.autoscalingSettings,
    required this.createTime,
    required this.id,
    required this.management,
    required this.name,
    required this.nodeTypeConfigs,
    required this.parent,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSettings':
          pulumi.Input.encodeList<
            GetClusterAutoscalingSetting,
            Map<String, dynamic>
          >(autoscalingSettings, (value) => value.toMap()),
      'createTime': createTime,
      'id': id,
      'management': management,
      'name': name,
      'nodeTypeConfigs':
          pulumi.Input.encodeList<
            GetClusterNodeTypeConfig,
            Map<String, dynamic>
          >(nodeTypeConfigs, (value) => value.toMap()),
      'parent': parent,
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      autoscalingSettings:
          pulumi.Input.decodeList<GetClusterAutoscalingSetting>(
            map['autoscalingSettings']!,
            (value) => GetClusterAutoscalingSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      management: map['management'] as bool,
      name: map['name'] as String,
      nodeTypeConfigs: pulumi.Input.decodeList<GetClusterNodeTypeConfig>(
        map['nodeTypeConfigs']!,
        (value) => GetClusterNodeTypeConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      parent: map['parent'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
