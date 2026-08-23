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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterGcpConfig> gcpConfig;
  /// The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  final pulumi.Input<String> kafkaCluster;
  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ConnectClusterArgs].
  /// [capacityConfig] A capacity configuration of a Kafka cluster.
  /// [connectClusterId] The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [gcpConfig] Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// [kafkaCluster] The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  /// [labels] List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// [location] ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  const ConnectClusterArgs({
    required this.capacityConfig,
    required this.connectClusterId,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
      'gcpConfig': pulumi.Input.mapInputValue<ConnectClusterGcpConfig, Map<String, dynamic>>(gcpConfig, (value) => value.toMap()),
      'kafkaCluster': kafkaCluster,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory ConnectClusterArgs.fromMap(Map<String, dynamic> map) {
    return ConnectClusterArgs(
      capacityConfig: pulumi.Input.fromValue(ConnectClusterCapacityConfig.fromMap((map['capacityConfig']! as Map).cast<String, dynamic>())),
      connectClusterId: pulumi.Input.fromValue(map['connectClusterId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpConfig: pulumi.Input.fromValue(ConnectClusterGcpConfig.fromMap((map['gcpConfig']! as Map).cast<String, dynamic>())),
      kafkaCluster: pulumi.Input.fromValue(map['kafkaCluster'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
