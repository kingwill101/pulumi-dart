// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_auxiliary_node_group_node_group.dart';

class ClusterClusterConfigAuxiliaryNodeGroup {
  /// A node group ID. Generated if not specified. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final pulumi.Input<String?>? nodeGroupId;
  /// Node group configuration.
  final pulumi.Input<List<ClusterClusterConfigAuxiliaryNodeGroupNodeGroup>> nodeGroups;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroup].
  /// [nodeGroupId] A node group ID. Generated if not specified. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  /// [nodeGroups] Node group configuration.
  const ClusterClusterConfigAuxiliaryNodeGroup({
    this.nodeGroupId,
    required this.nodeGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroupId': ?nodeGroupId,
      'nodeGroups': pulumi.Input.mapInputValue<List<ClusterClusterConfigAuxiliaryNodeGroupNodeGroup>, List<Map<String, dynamic>>>(nodeGroups, (value) => pulumi.Input.encodeList<ClusterClusterConfigAuxiliaryNodeGroupNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterClusterConfigAuxiliaryNodeGroup.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigAuxiliaryNodeGroup(
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigAuxiliaryNodeGroupNodeGroup>(map['nodeGroups']!, (value) => ClusterClusterConfigAuxiliaryNodeGroupNodeGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
