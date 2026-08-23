// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_roles_head_node.dart';
import 'interactive_query_cluster_roles_worker_node.dart';
import 'interactive_query_cluster_roles_zookeeper_node.dart';

class InteractiveQueryClusterRoles {
  /// A `headNode` block as defined above.
  final pulumi.Input<InteractiveQueryClusterRolesHeadNode> headNode;
  /// A `workerNode` block as defined below.
  final pulumi.Input<InteractiveQueryClusterRolesWorkerNode> workerNode;
  /// A `zookeeperNode` block as defined below.
  final pulumi.Input<InteractiveQueryClusterRolesZookeeperNode> zookeeperNode;

  /// Creates a new [InteractiveQueryClusterRoles].
  /// [headNode] A `headNode` block as defined above.
  /// [workerNode] A `workerNode` block as defined below.
  /// [zookeeperNode] A `zookeeperNode` block as defined below.
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
