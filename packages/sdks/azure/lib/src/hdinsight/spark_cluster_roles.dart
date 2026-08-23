// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_cluster_roles_head_node.dart';
import 'spark_cluster_roles_worker_node.dart';
import 'spark_cluster_roles_zookeeper_node.dart';

class SparkClusterRoles {
  /// A `headNode` block as defined above.
  final pulumi.Input<SparkClusterRolesHeadNode> headNode;
  /// A `workerNode` block as defined below.
  final pulumi.Input<SparkClusterRolesWorkerNode> workerNode;
  /// A `zookeeperNode` block as defined below.
  final pulumi.Input<SparkClusterRolesZookeeperNode> zookeeperNode;

  /// Creates a new [SparkClusterRoles].
  /// [headNode] A `headNode` block as defined above.
  /// [workerNode] A `workerNode` block as defined below.
  /// [zookeeperNode] A `zookeeperNode` block as defined below.
  const SparkClusterRoles({
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headNode': pulumi.Input.mapInputValue<SparkClusterRolesHeadNode, Map<String, dynamic>>(headNode, (value) => value.toMap()),
      'workerNode': pulumi.Input.mapInputValue<SparkClusterRolesWorkerNode, Map<String, dynamic>>(workerNode, (value) => value.toMap()),
      'zookeeperNode': pulumi.Input.mapInputValue<SparkClusterRolesZookeeperNode, Map<String, dynamic>>(zookeeperNode, (value) => value.toMap()),
    };
  }

  factory SparkClusterRoles.fromMap(Map<String, dynamic> map) {
    return SparkClusterRoles(
      headNode: pulumi.Input.fromValue(SparkClusterRolesHeadNode.fromMap((map['headNode']! as Map).cast<String, dynamic>())),
      workerNode: pulumi.Input.fromValue(SparkClusterRolesWorkerNode.fromMap((map['workerNode']! as Map).cast<String, dynamic>())),
      zookeeperNode: pulumi.Input.fromValue(SparkClusterRolesZookeeperNode.fromMap((map['zookeeperNode']! as Map).cast<String, dynamic>())),
    );
  }
}
