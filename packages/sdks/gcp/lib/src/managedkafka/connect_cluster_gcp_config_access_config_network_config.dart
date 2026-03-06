// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectClusterGcpConfigAccessConfigNetworkConfig {
  /// (Optional, Deprecated)
  /// Additional subnets may be specified. They may be in another region, but must be in the same VPC network. The Connect workers can communicate with network endpoints in either the primary or additional subnets.
  ///
  /// &gt; **Warning:** `additionalSubnets` is deprecated and will be removed in a future major release. Managed Kafka Connect clusters can now reach any endpoint accessible from the primary subnet without the need to define additional subnets. Please see https://cloud.google.com/managed-service-for-apache-kafka/docs/connect-cluster/create-connect-cluster#worker-subnet for more information.
  final pulumi.Input<List<String>>? additionalSubnets;
  /// Additional DNS domain names from the subnet's network to be made visible to the Connect Cluster. When using MirrorMaker2, it's necessary to add the bootstrap address's dns domain name of the target cluster to make it visible to the connector. For example: my-kafka-cluster.us-central1.managedkafka.my-project.cloud.goog
  final pulumi.Input<List<String>>? dnsDomainNames;
  /// VPC subnet to make available to the Kafka Connect cluster. Structured like: projects/{project}/regions/{region}/subnetworks/{subnet_id}. It is used to create a Private Service Connect (PSC) interface for the Kafka Connect workers. It must be located in the same region as the Kafka Connect cluster. The CIDR range of the subnet must be within the IPv4 address ranges for private networks, as specified in RFC 1918. The primary subnet CIDR range must have a minimum size of /22 (1024 addresses).
  final pulumi.Input<String> primarySubnet;

  /// Creates a new [ConnectClusterGcpConfigAccessConfigNetworkConfig].
  /// [additionalSubnets] (Optional, Deprecated)
  /// [dnsDomainNames] Additional DNS domain names from the subnet's network to be made visible to the Connect Cluster. When using MirrorMaker2, it's necessary to add the bootstrap address's dns domain name of the target cluster to make it visible to the connector. For example: my-kafka-cluster.us-central1.managedkafka.my-project.cloud.goog
  /// [primarySubnet] VPC subnet to make available to the Kafka Connect cluster. Structured like: projects/{project}/regions/{region}/subnetworks/{subnet_id}. It is used to create a Private Service Connect (PSC) interface for the Kafka Connect workers. It must be located in the same region as the Kafka Connect cluster. The CIDR range of the subnet must be within the IPv4 address ranges for private networks, as specified in RFC 1918. The primary subnet CIDR range must have a minimum size of /22 (1024 addresses).
  const ConnectClusterGcpConfigAccessConfigNetworkConfig({
    this.additionalSubnets,
    this.dnsDomainNames,
    required this.primarySubnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSubnets': ?additionalSubnets,
      'dnsDomainNames': ?dnsDomainNames,
      'primarySubnet': primarySubnet,
    };
  }

  factory ConnectClusterGcpConfigAccessConfigNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ConnectClusterGcpConfigAccessConfigNetworkConfig(
      additionalSubnets: (() { final guardedValue = map['additionalSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsDomainNames: (() { final guardedValue = map['dnsDomainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      primarySubnet: pulumi.Input.fromValue(map['primarySubnet'] as String),
    );
  }
}

