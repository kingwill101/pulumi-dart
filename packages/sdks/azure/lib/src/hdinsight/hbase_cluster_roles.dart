// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hbase_cluster_roles_head_node.dart';
import 'hbase_cluster_roles_worker_node.dart';
import 'hbase_cluster_roles_zookeeper_node.dart';

class HBaseClusterRoles {
  /// A `head_node` block as defined above.
  final pulumi.Input<HBaseClusterRolesHeadNode> headNode;
  /// A `worker_node` block as defined below.
  final pulumi.Input<HBaseClusterRolesWorkerNode> workerNode;
  /// A `zookeeper_node` block as defined below.
  final pulumi.Input<HBaseClusterRolesZookeeperNode> zookeeperNode;

  /// Creates a new [HBaseClusterRoles].
  /// [headNode] A `head_node` block as defined above.
  /// [workerNode] A `worker_node` block as defined below.
  /// [zookeeperNode] A `zookeeper_node` block as defined below.
  const HBaseClusterRoles({
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headNode': pulumi.Input.mapInputValue<HBaseClusterRolesHeadNode, Map<String, dynamic>>(headNode, (value) => value.toMap()),
      'workerNode': pulumi.Input.mapInputValue<HBaseClusterRolesWorkerNode, Map<String, dynamic>>(workerNode, (value) => value.toMap()),
      'zookeeperNode': pulumi.Input.mapInputValue<HBaseClusterRolesZookeeperNode, Map<String, dynamic>>(zookeeperNode, (value) => value.toMap()),
    };
  }

  factory HBaseClusterRoles.fromMap(Map<String, dynamic> map) {
    return HBaseClusterRoles(
      headNode: pulumi.Input.fromValue(HBaseClusterRolesHeadNode.fromMap((map['headNode']! as Map).cast<String, dynamic>())),
      workerNode: pulumi.Input.fromValue(HBaseClusterRolesWorkerNode.fromMap((map['workerNode']! as Map).cast<String, dynamic>())),
      zookeeperNode: pulumi.Input.fromValue(HBaseClusterRolesZookeeperNode.fromMap((map['zookeeperNode']! as Map).cast<String, dynamic>())),
    );
  }
}

