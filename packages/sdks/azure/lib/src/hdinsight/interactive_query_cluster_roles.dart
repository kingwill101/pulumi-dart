// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_roles_head_node.dart';
import 'interactive_query_cluster_roles_worker_node.dart';
import 'interactive_query_cluster_roles_zookeeper_node.dart';

class InteractiveQueryClusterRoles {
  /// A `head_node` block as defined above.
  final pulumi.Input<InteractiveQueryClusterRolesHeadNode> headNode;
  /// A `worker_node` block as defined below.
  final pulumi.Input<InteractiveQueryClusterRolesWorkerNode> workerNode;
  /// A `zookeeper_node` block as defined below.
  final pulumi.Input<InteractiveQueryClusterRolesZookeeperNode> zookeeperNode;

  /// Creates a new [InteractiveQueryClusterRoles].
  /// [headNode] A `head_node` block as defined above.
  /// [workerNode] A `worker_node` block as defined below.
  /// [zookeeperNode] A `zookeeper_node` block as defined below.
  const InteractiveQueryClusterRoles({
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headNode': pulumi.Input.mapInputValue<InteractiveQueryClusterRolesHeadNode, Map<String, dynamic>>(headNode, (value) => value.toMap()),
      'workerNode': pulumi.Input.mapInputValue<InteractiveQueryClusterRolesWorkerNode, Map<String, dynamic>>(workerNode, (value) => value.toMap()),
      'zookeeperNode': pulumi.Input.mapInputValue<InteractiveQueryClusterRolesZookeeperNode, Map<String, dynamic>>(zookeeperNode, (value) => value.toMap()),
    };
  }

  factory InteractiveQueryClusterRoles.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterRoles(
      headNode: pulumi.Input.fromValue(InteractiveQueryClusterRolesHeadNode.fromMap((map['headNode']! as Map).cast<String, dynamic>())),
      workerNode: pulumi.Input.fromValue(InteractiveQueryClusterRolesWorkerNode.fromMap((map['workerNode']! as Map).cast<String, dynamic>())),
      zookeeperNode: pulumi.Input.fromValue(InteractiveQueryClusterRolesZookeeperNode.fromMap((map['zookeeperNode']! as Map).cast<String, dynamic>())),
    );
  }
}

