// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_gcp_config_access_config_network_config.dart';

class ClusterGcpConfigAccessConfig {
  /// Virtual Private Cloud (VPC) subnets where IP addresses for the Kafka cluster are allocated. To make the cluster available in a VPC, you must specify at least one `network_configs` block. Max of 10 subnets per cluster. Additional subnets may be specified with additional `network_configs` blocks.
  /// Structure is documented below.
  final List<ClusterGcpConfigAccessConfigNetworkConfig> networkConfigs;

  /// Creates a new [ClusterGcpConfigAccessConfig].
  /// [networkConfigs] Virtual Private Cloud (VPC) subnets where IP addresses for the Kafka cluster are allocated. To make the cluster available in a VPC, you must specify at least one `network_configs` block. Max of 10 subnets per cluster. Additional subnets may be specified with additional `network_configs` blocks.
  ClusterGcpConfigAccessConfig({
    required this.networkConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkConfigs': pulumi.Input.encodeList<ClusterGcpConfigAccessConfigNetworkConfig, Map<String, dynamic>>(networkConfigs, (value) => value.toMap()),
    };
  }

  factory ClusterGcpConfigAccessConfig.fromMap(Map<String, dynamic> map) {
    return ClusterGcpConfigAccessConfig(
      networkConfigs: pulumi.Input.decodeList<ClusterGcpConfigAccessConfigNetworkConfig>(map['networkConfigs'], (value) => ClusterGcpConfigAccessConfigNetworkConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

