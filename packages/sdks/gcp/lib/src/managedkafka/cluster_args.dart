// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_capacity_config.dart';
import 'cluster_capacity_config.dart';
import 'cluster_gcp_config.dart';
import 'cluster_rebalance_config.dart';
import 'cluster_tls_config.dart';

/// {@template pulumi_managedkafka_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_cluster_cluster_args_doc}
class ClusterArgs {
  /// Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterBrokerCapacityConfig>? brokerCapacityConfig;
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterCapacityConfig> capacityConfig;
  /// The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  final pulumi.Input<String> clusterId;
  /// Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ClusterGcpConfig> gcpConfig;
  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Defines rebalancing behavior of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterRebalanceConfig>? rebalanceConfig;
  /// TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tls_config` block.
  /// Structure is documented below.
  final pulumi.Input<ClusterTlsConfig>? tlsConfig;

  /// Creates a new [ClusterArgs].
  /// [brokerCapacityConfig] Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// [capacityConfig] A capacity configuration of a Kafka cluster.
  /// [clusterId] The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  /// [gcpConfig] Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// [labels] List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  /// [rebalanceConfig] Defines rebalancing behavior of a Kafka cluster.
  /// [tlsConfig] TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tls_config` block.
  ClusterArgs({
    this.brokerCapacityConfig,
    required this.capacityConfig,
    required this.clusterId,
    required this.gcpConfig,
    this.labels,
    required this.location,
    this.project,
    this.rebalanceConfig,
    this.tlsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerCapacityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerCapacityConfig, Map<String, dynamic>>(brokerCapacityConfig, (value) => value.toMap()),
      'capacityConfig': pulumi.Input.mapInputValue<ClusterCapacityConfig, Map<String, dynamic>>(capacityConfig, (value) => value.toMap()),
      'clusterId': clusterId,
      'gcpConfig': pulumi.Input.mapInputValue<ClusterGcpConfig, Map<String, dynamic>>(gcpConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'rebalanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterRebalanceConfig, Map<String, dynamic>>(rebalanceConfig, (value) => value.toMap()),
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      brokerCapacityConfig: map['brokerCapacityConfig'] == null ? null : (ClusterBrokerCapacityConfig.fromMap((map['brokerCapacityConfig'] as Map).cast<String, dynamic>())).input(),
      capacityConfig: (ClusterCapacityConfig.fromMap((map['capacityConfig'] as Map).cast<String, dynamic>())).input(),
      clusterId: (map['clusterId'] as String).input(),
      gcpConfig: (ClusterGcpConfig.fromMap((map['gcpConfig'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      rebalanceConfig: map['rebalanceConfig'] == null ? null : (ClusterRebalanceConfig.fromMap((map['rebalanceConfig'] as Map).cast<String, dynamic>())).input(),
      tlsConfig: map['tlsConfig'] == null ? null : (ClusterTlsConfig.fromMap((map['tlsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

