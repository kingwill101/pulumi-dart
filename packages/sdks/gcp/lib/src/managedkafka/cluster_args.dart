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
  final pulumi.Input<ClusterBrokerCapacityConfig?>? brokerCapacityConfig;
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterCapacityConfig> capacityConfig;
  /// The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  final pulumi.Input<String> clusterId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ClusterGcpConfig> gcpConfig;
  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Defines rebalancing behavior of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterRebalanceConfig?>? rebalanceConfig;
  /// TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tlsConfig` block.
  /// Structure is documented below.
  final pulumi.Input<ClusterTlsConfig?>? tlsConfig;

  /// Creates a new [ClusterArgs].
  /// [brokerCapacityConfig] Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// [capacityConfig] A capacity configuration of a Kafka cluster.
  /// [clusterId] The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [gcpConfig] Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// [labels] List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  /// [rebalanceConfig] Defines rebalancing behavior of a Kafka cluster.
  /// [tlsConfig] TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tlsConfig` block.
  const ClusterArgs({
    this.brokerCapacityConfig,
    required this.capacityConfig,
    required this.clusterId,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      brokerCapacityConfig: (() { final guardedValue = map['brokerCapacityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterBrokerCapacityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityConfig: pulumi.Input.fromValue(ClusterCapacityConfig.fromMap((map['capacityConfig']! as Map).cast<String, dynamic>())),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpConfig: pulumi.Input.fromValue(ClusterGcpConfig.fromMap((map['gcpConfig']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rebalanceConfig: (() { final guardedValue = map['rebalanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterRebalanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsConfig: (() { final guardedValue = map['tlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
