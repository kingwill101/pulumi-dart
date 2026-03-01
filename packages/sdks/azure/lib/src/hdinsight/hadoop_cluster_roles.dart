// ignore_for_file: unused_element, unnecessary_cast

import 'hadoop_cluster_roles_edge_node.dart';
import 'hadoop_cluster_roles_head_node.dart';
import 'hadoop_cluster_roles_worker_node.dart';
import 'hadoop_cluster_roles_zookeeper_node.dart';

class HadoopClusterRoles {
  /// A `edge_node` block as defined below.
  final HadoopClusterRolesEdgeNode? edgeNode;
  /// A `head_node` block as defined above.
  final HadoopClusterRolesHeadNode headNode;
  /// A `worker_node` block as defined below.
  final HadoopClusterRolesWorkerNode workerNode;
  /// A `zookeeper_node` block as defined below.
  final HadoopClusterRolesZookeeperNode zookeeperNode;

  /// Creates a new [HadoopClusterRoles].
  /// [edgeNode] A `edge_node` block as defined below.
  /// [headNode] A `head_node` block as defined above.
  /// [workerNode] A `worker_node` block as defined below.
  /// [zookeeperNode] A `zookeeper_node` block as defined below.
  HadoopClusterRoles({
    this.edgeNode,
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeNode': ?edgeNode == null ? null : edgeNode!.toMap(),
      'headNode': headNode.toMap(),
      'workerNode': workerNode.toMap(),
      'zookeeperNode': zookeeperNode.toMap(),
    };
  }

  factory HadoopClusterRoles.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRoles(
      edgeNode: map['edgeNode'] == null ? null : HadoopClusterRolesEdgeNode.fromMap((map['edgeNode'] as Map).cast<String, dynamic>()),
      headNode: HadoopClusterRolesHeadNode.fromMap((map['headNode'] as Map).cast<String, dynamic>()),
      workerNode: HadoopClusterRolesWorkerNode.fromMap((map['workerNode'] as Map).cast<String, dynamic>()),
      zookeeperNode: HadoopClusterRolesZookeeperNode.fromMap((map['zookeeperNode'] as Map).cast<String, dynamic>()),
    );
  }
}

