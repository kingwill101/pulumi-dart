// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_capacity_config.dart';
import 'cluster_capacity_config.dart';
import 'cluster_gcp_config.dart';
import 'cluster_rebalance_config.dart';
import 'cluster_tls_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterBrokerCapacityConfig>? brokerCapacityConfig;
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterCapacityConfig>? capacityConfig;
  /// The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  final pulumi.Input<String>? clusterId;
  /// The time when the cluster was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ClusterGcpConfig>? gcpConfig;
  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String>? location;
  /// The name of the cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Defines rebalancing behavior of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterRebalanceConfig>? rebalanceConfig;
  /// The current state of the cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  final pulumi.Input<String>? state;
  /// TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tls_config` block.
  /// Structure is documented below.
  final pulumi.Input<ClusterTlsConfig>? tlsConfig;
  /// The time when the cluster was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ClusterState].
  /// [brokerCapacityConfig] Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// [capacityConfig] A capacity configuration of a Kafka cluster.
  /// [clusterId] The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  /// [createTime] The time when the cluster was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gcpConfig] Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// [labels] List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [name] The name of the cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rebalanceConfig] Defines rebalancing behavior of a Kafka cluster.
  /// [state] The current state of the cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  /// [tlsConfig] TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tls_config` block.
  /// [updateTime] The time when the cluster was last updated.
  ClusterState({
    pulumi.Output<ClusterBrokerCapacityConfig>? brokerCapacityConfig,
    pulumi.Output<ClusterCapacityConfig>? capacityConfig,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<ClusterGcpConfig>? gcpConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<ClusterRebalanceConfig>? rebalanceConfig,
    pulumi.Output<String>? state,
    pulumi.Output<ClusterTlsConfig>? tlsConfig,
    pulumi.Output<String>? updateTime,
  }) :
      brokerCapacityConfig = pulumi.Input.asOptionalInput<ClusterBrokerCapacityConfig>(brokerCapacityConfig),
      capacityConfig = pulumi.Input.asOptionalInput<ClusterCapacityConfig>(capacityConfig),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      gcpConfig = pulumi.Input.asOptionalInput<ClusterGcpConfig>(gcpConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      rebalanceConfig = pulumi.Input.asOptionalInput<ClusterRebalanceConfig>(rebalanceConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      tlsConfig = pulumi.Input.asOptionalInput<ClusterTlsConfig>(tlsConfig),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerCapacityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerCapacityConfig, Map<String, dynamic>>(brokerCapacityConfig, (value) => value.toMap()),
      'capacityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterCapacityConfig, Map<String, dynamic>>(capacityConfig, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'gcpConfig': ?pulumi.Input.mapOptionalInputValue<ClusterGcpConfig, Map<String, dynamic>>(gcpConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'rebalanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterRebalanceConfig, Map<String, dynamic>>(rebalanceConfig, (value) => value.toMap()),
      'state': ?state,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      brokerCapacityConfig: map['brokerCapacityConfig'] == null ? null : pulumi.Output.create<ClusterBrokerCapacityConfig>(ClusterBrokerCapacityConfig.fromMap((map['brokerCapacityConfig'] as Map).cast<String, dynamic>())),
      capacityConfig: map['capacityConfig'] == null ? null : pulumi.Output.create<ClusterCapacityConfig>(ClusterCapacityConfig.fromMap((map['capacityConfig'] as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      gcpConfig: map['gcpConfig'] == null ? null : pulumi.Output.create<ClusterGcpConfig>(ClusterGcpConfig.fromMap((map['gcpConfig'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      rebalanceConfig: map['rebalanceConfig'] == null ? null : pulumi.Output.create<ClusterRebalanceConfig>(ClusterRebalanceConfig.fromMap((map['rebalanceConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tlsConfig: map['tlsConfig'] == null ? null : pulumi.Output.create<ClusterTlsConfig>(ClusterTlsConfig.fromMap((map['tlsConfig'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

