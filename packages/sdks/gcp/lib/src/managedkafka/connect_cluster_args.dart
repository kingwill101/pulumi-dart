// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_cluster_capacity_config.dart';
import 'connect_cluster_gcp_config.dart';

/// {@template pulumi_managedkafka_connect_cluster_connect_cluster_args_doc}
/// The set of arguments for ConnectCluster.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_connect_cluster_connect_cluster_args_doc}
class ConnectClusterArgs {
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterCapacityConfig> capacityConfig;
  /// The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  final pulumi.Input<String> connectClusterId;
  /// Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterGcpConfig> gcpConfig;
  /// The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  final pulumi.Input<String> kafkaCluster;
  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ConnectClusterArgs].
  /// [capacityConfig] A capacity configuration of a Kafka cluster.
  /// [connectClusterId] The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  /// [gcpConfig] Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// [kafkaCluster] The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  /// [labels] List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// [location] ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  ConnectClusterArgs({
    required this.capacityConfig,
    required this.connectClusterId,
    required this.gcpConfig,
    required this.kafkaCluster,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityConfig': pulumi.Input.mapInputValue<ConnectClusterCapacityConfig, Map<String, dynamic>>(capacityConfig, (value) => value.toMap()),
      'connectClusterId': connectClusterId,
      'gcpConfig': pulumi.Input.mapInputValue<ConnectClusterGcpConfig, Map<String, dynamic>>(gcpConfig, (value) => value.toMap()),
      'kafkaCluster': kafkaCluster,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory ConnectClusterArgs.fromMap(Map<String, dynamic> map) {
    return ConnectClusterArgs(
      capacityConfig: (ConnectClusterCapacityConfig.fromMap((map['capacityConfig'] as Map).cast<String, dynamic>())).input(),
      connectClusterId: (map['connectClusterId'] as String).input(),
      gcpConfig: (ConnectClusterGcpConfig.fromMap((map['gcpConfig'] as Map).cast<String, dynamic>())).input(),
      kafkaCluster: (map['kafkaCluster'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

