// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_service_connect_config_response.dart';

/// Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.
class NetworkConfigResponseDatafusionV1beta1 {
  /// Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
  final pulumi.Input<String> connectionType;
  /// Optional. The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. This is required only when using connection type VPC_PEERING. Format: a.b.c.d/22 Example: 192.168.0.0/22
  final pulumi.Input<String> ipAllocation;
  /// Optional. Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. This is required only when using connection type VPC peering. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{project-id}/global/networks/{network}. This is only required for connectivity type VPC_PEERING.
  final pulumi.Input<String> network;
  /// Optional. Configuration for Private Service Connect. This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  final pulumi.Input<PrivateServiceConnectConfigResponse> privateServiceConnectConfig;

  /// Creates a new [NetworkConfigResponseDatafusionV1beta1].
  /// [connectionType] Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
  /// [ipAllocation] Optional. The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. This is required only when using connection type VPC_PEERING. Format: a.b.c.d/22 Example: 192.168.0.0/22
  /// [network] Optional. Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. This is required only when using connection type VPC peering. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{project-id}/global/networks/{network}. This is only required for connectivity type VPC_PEERING.
  /// [privateServiceConnectConfig] Optional. Configuration for Private Service Connect. This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  const NetworkConfigResponseDatafusionV1beta1({
    required this.connectionType,
    required this.ipAllocation,
    required this.network,
    required this.privateServiceConnectConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'ipAllocation': ipAllocation,
      'network': network,
      'privateServiceConnectConfig': pulumi.Input.mapInputValue<PrivateServiceConnectConfigResponse, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
    };
  }

  factory NetworkConfigResponseDatafusionV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseDatafusionV1beta1(
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      ipAllocation: pulumi.Input.fromValue(map['ipAllocation'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      privateServiceConnectConfig: pulumi.Input.fromValue(PrivateServiceConnectConfigResponse.fromMap((map['privateServiceConnectConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
