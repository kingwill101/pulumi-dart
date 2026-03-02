// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_roles_edge_node.dart';
import 'hadoop_cluster_roles_head_node.dart';
import 'hadoop_cluster_roles_worker_node.dart';
import 'hadoop_cluster_roles_zookeeper_node.dart';

class HadoopClusterRoles {
  /// A `edge_node` block as defined below.
  final pulumi.Input<HadoopClusterRolesEdgeNode>? edgeNode;
  /// A `head_node` block as defined above.
  final pulumi.Input<HadoopClusterRolesHeadNode> headNode;
  /// A `worker_node` block as defined below.
  final pulumi.Input<HadoopClusterRolesWorkerNode> workerNode;
  /// A `zookeeper_node` block as defined below.
  final pulumi.Input<HadoopClusterRolesZookeeperNode> zookeeperNode;

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
      'edgeNode': ?pulumi.Input.mapOptionalInputValue<HadoopClusterRolesEdgeNode, Map<String, dynamic>>(edgeNode, (value) => value.toMap()),
      'headNode': pulumi.Input.mapInputValue<HadoopClusterRolesHeadNode, Map<String, dynamic>>(headNode, (value) => value.toMap()),
      'workerNode': pulumi.Input.mapInputValue<HadoopClusterRolesWorkerNode, Map<String, dynamic>>(workerNode, (value) => value.toMap()),
      'zookeeperNode': pulumi.Input.mapInputValue<HadoopClusterRolesZookeeperNode, Map<String, dynamic>>(zookeeperNode, (value) => value.toMap()),
    };
  }

  factory HadoopClusterRoles.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRoles(
      edgeNode: map['edgeNode'] == null ? null : (HadoopClusterRolesEdgeNode.fromMap((map['edgeNode'] as Map).cast<String, dynamic>())).input(),
      headNode: (HadoopClusterRolesHeadNode.fromMap((map['headNode'] as Map).cast<String, dynamic>())).input(),
      workerNode: (HadoopClusterRolesWorkerNode.fromMap((map['workerNode'] as Map).cast<String, dynamic>())).input(),
      zookeeperNode: (HadoopClusterRolesZookeeperNode.fromMap((map['zookeeperNode'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

