// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_cluster_capacity_config.dart';
import 'connect_cluster_gcp_config.dart';

/// Input properties used for looking up and filtering ConnectCluster resources.
class ConnectClusterState {
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterCapacityConfig>? capacityConfig;
  /// The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  final pulumi.Input<String>? connectClusterId;
  /// The time when the cluster was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterGcpConfig>? gcpConfig;
  /// The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  final pulumi.Input<String>? kafkaCluster;
  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String>? location;
  /// The name of the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER_ID`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the connect cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  final pulumi.Input<String>? state;
  /// The time when the cluster was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ConnectClusterState].
  /// [capacityConfig] A capacity configuration of a Kafka cluster.
  /// [connectClusterId] The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  /// [createTime] The time when the cluster was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gcpConfig] Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// [kafkaCluster] The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  /// [labels] List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// [location] ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [name] The name of the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER_ID`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The current state of the connect cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  /// [updateTime] The time when the cluster was last updated.
  ConnectClusterState({
    pulumi.Output<ConnectClusterCapacityConfig>? capacityConfig,
    pulumi.Output<String>? connectClusterId,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<ConnectClusterGcpConfig>? gcpConfig,
    pulumi.Output<String>? kafkaCluster,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      capacityConfig = pulumi.Input.asOptionalInput<ConnectClusterCapacityConfig>(capacityConfig),
      connectClusterId = pulumi.Input.asOptionalInput<String>(connectClusterId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gcpConfig = pulumi.Input.asOptionalInput<ConnectClusterGcpConfig>(gcpConfig),
      kafkaCluster = pulumi.Input.asOptionalInput<String>(kafkaCluster),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityConfig': ?pulumi.Input.mapOptionalInputValue<ConnectClusterCapacityConfig, Map<String, dynamic>>(capacityConfig, (value) => value.toMap()),
      'connectClusterId': ?connectClusterId,
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'gcpConfig': ?pulumi.Input.mapOptionalInputValue<ConnectClusterGcpConfig, Map<String, dynamic>>(gcpConfig, (value) => value.toMap()),
      'kafkaCluster': ?kafkaCluster,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory ConnectClusterState.fromMap(Map<String, dynamic> map) {
    return ConnectClusterState(
      capacityConfig: map['capacityConfig'] == null ? null : pulumi.Output.create<ConnectClusterCapacityConfig>(ConnectClusterCapacityConfig.fromMap((map['capacityConfig'] as Map).cast<String, dynamic>())),
      connectClusterId: map['connectClusterId'] == null ? null : pulumi.Output.create<String>(map['connectClusterId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gcpConfig: map['gcpConfig'] == null ? null : pulumi.Output.create<ConnectClusterGcpConfig>(ConnectClusterGcpConfig.fromMap((map['gcpConfig'] as Map).cast<String, dynamic>())),
      kafkaCluster: map['kafkaCluster'] == null ? null : pulumi.Output.create<String>(map['kafkaCluster'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

