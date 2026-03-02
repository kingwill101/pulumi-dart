// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_cluster_roles_head_node.dart';
import 'kafka_cluster_roles_kafka_management_node.dart';
import 'kafka_cluster_roles_worker_node.dart';
import 'kafka_cluster_roles_zookeeper_node.dart';

class KafkaClusterRoles {
  /// A `head_node` block as defined above.
  final pulumi.Input<KafkaClusterRolesHeadNode> headNode;
  /// A `kafka_management_node` block as defined below.
  ///
  /// > **Note:** This property has been deprecated and will be removed in version 4.0.
  final pulumi.Input<KafkaClusterRolesKafkaManagementNode>? kafkaManagementNode;
  /// A `worker_node` block as defined below.
  final pulumi.Input<KafkaClusterRolesWorkerNode> workerNode;
  /// A `zookeeper_node` block as defined below.
  final pulumi.Input<KafkaClusterRolesZookeeperNode> zookeeperNode;

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
      'headNode': pulumi.Input.mapInputValue<KafkaClusterRolesHeadNode, Map<String, dynamic>>(headNode, (value) => value.toMap()),
      'kafkaManagementNode': ?pulumi.Input.mapOptionalInputValue<KafkaClusterRolesKafkaManagementNode, Map<String, dynamic>>(kafkaManagementNode, (value) => value.toMap()),
      'workerNode': pulumi.Input.mapInputValue<KafkaClusterRolesWorkerNode, Map<String, dynamic>>(workerNode, (value) => value.toMap()),
      'zookeeperNode': pulumi.Input.mapInputValue<KafkaClusterRolesZookeeperNode, Map<String, dynamic>>(zookeeperNode, (value) => value.toMap()),
    };
  }

  factory KafkaClusterRoles.fromMap(Map<String, dynamic> map) {
    return KafkaClusterRoles(
      headNode: (KafkaClusterRolesHeadNode.fromMap((map['headNode'] as Map).cast<String, dynamic>())).input(),
      kafkaManagementNode: map['kafkaManagementNode'] == null ? null : (KafkaClusterRolesKafkaManagementNode.fromMap((map['kafkaManagementNode'] as Map).cast<String, dynamic>())).input(),
      workerNode: (KafkaClusterRolesWorkerNode.fromMap((map['workerNode'] as Map).cast<String, dynamic>())).input(),
      zookeeperNode: (KafkaClusterRolesZookeeperNode.fromMap((map['zookeeperNode'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

