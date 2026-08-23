// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_roles_edge_node.dart';
import 'hadoop_cluster_roles_head_node.dart';
import 'hadoop_cluster_roles_worker_node.dart';
import 'hadoop_cluster_roles_zookeeper_node.dart';

class HadoopClusterRoles {
  /// A `edgeNode` block as defined below.
  final pulumi.Input<HadoopClusterRolesEdgeNode>? edgeNode;
  /// A `headNode` block as defined above.
  final pulumi.Input<HadoopClusterRolesHeadNode> headNode;
  /// A `workerNode` block as defined below.
  final pulumi.Input<HadoopClusterRolesWorkerNode> workerNode;
  /// A `zookeeperNode` block as defined below.
  final pulumi.Input<HadoopClusterRolesZookeeperNode> zookeeperNode;

  /// Creates a new [HadoopClusterRoles].
  /// [edgeNode] A `edgeNode` block as defined below.
  /// [headNode] A `headNode` block as defined above.
  /// [workerNode] A `workerNode` block as defined below.
  /// [zookeeperNode] A `zookeeperNode` block as defined below.
  const HadoopClusterRoles({
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
      edgeNode: (() { final guardedValue = map['edgeNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterRolesEdgeNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headNode: pulumi.Input.fromValue(HadoopClusterRolesHeadNode.fromMap((map['headNode']! as Map).cast<String, dynamic>())),
      workerNode: pulumi.Input.fromValue(HadoopClusterRolesWorkerNode.fromMap((map['workerNode']! as Map).cast<String, dynamic>())),
      zookeeperNode: pulumi.Input.fromValue(HadoopClusterRolesZookeeperNode.fromMap((map['zookeeperNode']! as Map).cast<String, dynamic>())),
    );
  }
}
