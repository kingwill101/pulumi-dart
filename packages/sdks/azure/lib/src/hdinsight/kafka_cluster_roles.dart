// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_cluster_roles_head_node.dart';
import 'kafka_cluster_roles_kafka_management_node.dart';
import 'kafka_cluster_roles_worker_node.dart';
import 'kafka_cluster_roles_zookeeper_node.dart';

class KafkaClusterRoles {
  /// A `head_node` block as defined above.
  final KafkaClusterRolesHeadNode headNode;
  /// A `kafka_management_node` block as defined below.
  ///
  /// > **Note:** This property has been deprecated and will be removed in version 4.0.
  final KafkaClusterRolesKafkaManagementNode? kafkaManagementNode;
  /// A `worker_node` block as defined below.
  final KafkaClusterRolesWorkerNode workerNode;
  /// A `zookeeper_node` block as defined below.
  final KafkaClusterRolesZookeeperNode zookeeperNode;

  /// Creates a new [KafkaClusterRoles].
  /// [headNode] A `head_node` block as defined above.
  /// [kafkaManagementNode] A `kafka_management_node` block as defined below.
  /// [workerNode] A `worker_node` block as defined below.
  /// [zookeeperNode] A `zookeeper_node` block as defined below.
  KafkaClusterRoles({
    required this.headNode,
    this.kafkaManagementNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headNode': headNode.toMap(),
      'kafkaManagementNode': ?kafkaManagementNode == null ? null : kafkaManagementNode!.toMap(),
      'workerNode': workerNode.toMap(),
      'zookeeperNode': zookeeperNode.toMap(),
    };
  }

  factory KafkaClusterRoles.fromMap(Map<String, dynamic> map) {
    return KafkaClusterRoles(
      headNode: KafkaClusterRolesHeadNode.fromMap((map['headNode'] as Map).cast<String, dynamic>()),
      kafkaManagementNode: map['kafkaManagementNode'] == null ? null : KafkaClusterRolesKafkaManagementNode.fromMap((map['kafkaManagementNode'] as Map).cast<String, dynamic>()),
      workerNode: KafkaClusterRolesWorkerNode.fromMap((map['workerNode'] as Map).cast<String, dynamic>()),
      zookeeperNode: KafkaClusterRolesZookeeperNode.fromMap((map['zookeeperNode'] as Map).cast<String, dynamic>()),
    );
  }
}

