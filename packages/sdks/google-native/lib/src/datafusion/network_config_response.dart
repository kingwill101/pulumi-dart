// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.
class NetworkConfigResponse {
  /// The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the customer network.
  final pulumi.Input<String> ipAllocation;
  /// Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{host-project-id}/global/networks/{network}
  final pulumi.Input<String> network;

  /// Creates a new [NetworkConfigResponse].
  /// [ipAllocation] The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the customer network.
  /// [network] Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{host-project-id}/global/networks/{network}
  NetworkConfigResponse({
    required this.ipAllocation,
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAllocation': ipAllocation,
      'network': network,
    };
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      ipAllocation: pulumi.Input.fromValue(map['ipAllocation'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}

