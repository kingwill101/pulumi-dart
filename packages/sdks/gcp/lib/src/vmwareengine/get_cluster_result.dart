// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_autoscaling_setting.dart';
import 'get_cluster_datastore_mount_config.dart';
import 'get_cluster_node_type_config.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final List<GetClusterAutoscalingSetting>? autoscalingSettings;
  final String? createTime;
  final List<GetClusterDatastoreMountConfig>? datastoreMountConfigs;
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? management;
  final String? name;
  final List<GetClusterNodeTypeConfig>? nodeTypeConfigs;
  final String? parent;
  final String? state;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetClusterResult].
  /// [autoscalingSettings] Optional.
  /// [createTime] Optional.
  /// [datastoreMountConfigs] Optional.
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [management] Optional.
  /// [name] Optional.
  /// [nodeTypeConfigs] Optional.
  /// [parent] Optional.
  /// [state] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetClusterResult({
    this.autoscalingSettings,
    this.createTime,
    this.datastoreMountConfigs,
    this.deletionPolicy,
    this.id,
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
      'autoscalingSettings': ?(() { final guardedValue = autoscalingSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAutoscalingSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'datastoreMountConfigs': ?(() { final guardedValue = datastoreMountConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterDatastoreMountConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'management': ?management,
      'name': ?name,
      'nodeTypeConfigs': ?(() { final guardedValue = nodeTypeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNodeTypeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'parent': ?parent,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      autoscalingSettings: (() { final guardedValue = map['autoscalingSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAutoscalingSetting>(guardedValue, (value) => GetClusterAutoscalingSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datastoreMountConfigs: (() { final guardedValue = map['datastoreMountConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterDatastoreMountConfig>(guardedValue, (value) => GetClusterDatastoreMountConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTypeConfigs: (() { final guardedValue = map['nodeTypeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNodeTypeConfig>(guardedValue, (value) => GetClusterNodeTypeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
