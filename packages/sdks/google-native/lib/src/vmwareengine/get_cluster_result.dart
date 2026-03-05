// ignore_for_file: unused_element, unnecessary_cast

import 'stretched_cluster_config_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Creation time of this resource.
  final String createTime;
  /// True if the cluster is a management cluster; false otherwise. There can only be one management cluster in a private cloud and it has to be the first one.
  final bool management;
  /// The resource name of this cluster. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  final String name;
  /// The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  final Map<String, String> nodeTypeConfigs;
  /// State of the resource.
  final String state;
  /// Optional. Configuration of a stretched cluster. Required for clusters that belong to a STRETCHED private cloud.
  final StretchedClusterConfigResponse stretchedClusterConfig;
  /// System-generated unique identifier for the resource.
  final String uid;
  /// Last update time of this resource.
  final String updateTime;

  /// Creates a new [GetClusterResult].
  /// [createTime] Creation time of this resource.
  /// [management] True if the cluster is a management cluster; false otherwise. There can only be one management cluster in a private cloud and it has to be the first one.
  /// [name] The resource name of this cluster. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// [nodeTypeConfigs] The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  /// [state] State of the resource.
  /// [stretchedClusterConfig] Optional. Configuration of a stretched cluster. Required for clusters that belong to a STRETCHED private cloud.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  GetClusterResult({
    required this.createTime,
    required this.management,
    required this.name,
    required this.nodeTypeConfigs,
    required this.state,
    required this.stretchedClusterConfig,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'management': management,
      'name': name,
      'nodeTypeConfigs': nodeTypeConfigs,
      'state': state,
      'stretchedClusterConfig': stretchedClusterConfig.toMap(),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      createTime: map['createTime'] as String,
      management: map['management'] as bool,
      name: map['name'] as String,
      nodeTypeConfigs: (map['nodeTypeConfigs'] as Map).cast<String, String>(),
      state: map['state'] as String,
      stretchedClusterConfig: StretchedClusterConfigResponse.fromMap((map['stretchedClusterConfig']! as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

