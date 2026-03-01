// ignore_for_file: unused_element, unnecessary_cast

import 'interactive_query_cluster_roles_head_node.dart';
import 'interactive_query_cluster_roles_worker_node.dart';
import 'interactive_query_cluster_roles_zookeeper_node.dart';

class InteractiveQueryClusterRoles {
  /// A `head_node` block as defined above.
  final InteractiveQueryClusterRolesHeadNode headNode;
  /// A `worker_node` block as defined below.
  final InteractiveQueryClusterRolesWorkerNode workerNode;
  /// A `zookeeper_node` block as defined below.
  final InteractiveQueryClusterRolesZookeeperNode zookeeperNode;

  /// Creates a new [InteractiveQueryClusterRoles].
  /// [headNode] A `head_node` block as defined above.
  /// [workerNode] A `worker_node` block as defined below.
  /// [zookeeperNode] A `zookeeper_node` block as defined below.
  InteractiveQueryClusterRoles({
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headNode': headNode.toMap(),
      'workerNode': workerNode.toMap(),
      'zookeeperNode': zookeeperNode.toMap(),
    };
  }

  factory InteractiveQueryClusterRoles.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterRoles(
      headNode: InteractiveQueryClusterRolesHeadNode.fromMap((map['headNode'] as Map).cast<String, dynamic>()),
      workerNode: InteractiveQueryClusterRolesWorkerNode.fromMap((map['workerNode'] as Map).cast<String, dynamic>()),
      zookeeperNode: InteractiveQueryClusterRolesZookeeperNode.fromMap((map['zookeeperNode'] as Map).cast<String, dynamic>()),
    );
  }
}

