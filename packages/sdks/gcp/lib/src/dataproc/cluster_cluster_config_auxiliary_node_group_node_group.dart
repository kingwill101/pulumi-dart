// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_auxiliary_node_group_node_group_node_group_config.dart';

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroup {
  /// The Node group resource name.
  final pulumi.Input<String>? name;
  /// The node group instance group configuration.
  final pulumi.Input<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig>? nodeGroupConfig;
  /// Node group roles.
  /// One of `"DRIVER"`.
  final pulumi.Input<List<String>> roles;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroupNodeGroup].
  /// [name] The Node group resource name.
  /// [nodeGroupConfig] The node group instance group configuration.
  /// [roles] Node group roles.
  ClusterClusterConfigAuxiliaryNodeGroupNodeGroup({
    this.name,
    this.nodeGroupConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nodeGroupConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig, Map<String, dynamic>>(nodeGroupConfig, (value) => value.toMap()),
      'roles': roles,
    };
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroup.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroup(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeGroupConfig: map['nodeGroupConfig'] == null ? null : (ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig.fromMap((map['nodeGroupConfig'] as Map).cast<String, dynamic>())).input(),
      roles: ((map['roles'] as List).cast<String>()).input(),
    );
  }
}

