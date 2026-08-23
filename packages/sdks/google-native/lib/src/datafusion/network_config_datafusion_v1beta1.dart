// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_connection_type.dart';
import 'private_service_connect_config.dart';

/// Network configuration for a Data Fusion instance. These configurations are used for peering with the customer network. Configurations are optional when a public Data Fusion instance is to be created. However, providing these configurations allows several benefits, such as reduced network latency while accessing the customer resources from managed Data Fusion instance nodes, as well as access to the customer on-prem resources.
class NetworkConfigDatafusionV1beta1 {
  /// Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
  final pulumi.Input<NetworkConfigConnectionType>? connectionType;
  /// Optional. The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. This is required only when using connection type VPC_PEERING. Format: a.b.c.d/22 Example: 192.168.0.0/22
  final pulumi.Input<String>? ipAllocation;
  /// Optional. Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. This is required only when using connection type VPC peering. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{project-id}/global/networks/{network}. This is only required for connectivity type VPC_PEERING.
  final pulumi.Input<String>? network;
  /// Optional. Configuration for Private Service Connect. This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  final pulumi.Input<PrivateServiceConnectConfig>? privateServiceConnectConfig;

  /// Creates a new [NetworkConfigDatafusionV1beta1].
  /// [connectionType] Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
  /// [ipAllocation] Optional. The IP range in CIDR notation to use for the managed Data Fusion instance nodes. This range must not overlap with any other ranges used in the Data Fusion instance network. This is required only when using connection type VPC_PEERING. Format: a.b.c.d/22 Example: 192.168.0.0/22
  /// [network] Optional. Name of the network in the customer project with which the Tenant Project will be peered for executing pipelines. This is required only when using connection type VPC peering. In case of shared VPC where the network resides in another host project the network should specified in the form of projects/{project-id}/global/networks/{network}. This is only required for connectivity type VPC_PEERING.
  /// [privateServiceConnectConfig] Optional. Configuration for Private Service Connect. This is required only when using connection type PRIVATE_SERVICE_CONNECT_INTERFACES.
  const NetworkConfigDatafusionV1beta1({
    this.connectionType,
    this.ipAllocation,
    this.network,
    this.privateServiceConnectConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?pulumi.Input.mapOptionalInputValue<NetworkConfigConnectionType, String>(connectionType, (value) => value.wireValue),
      'ipAllocation': ?ipAllocation,
      'network': ?network,
      'privateServiceConnectConfig': ?pulumi.Input.mapOptionalInputValue<PrivateServiceConnectConfig, Map<String, dynamic>>(privateServiceConnectConfig, (value) => value.toMap()),
    };
  }

  factory NetworkConfigDatafusionV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigDatafusionV1beta1(
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigConnectionType.fromValue(guardedValue as String)); })(),
      ipAllocation: (() { final guardedValue = map['ipAllocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateServiceConnectConfig: (() { final guardedValue = map['privateServiceConnectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateServiceConnectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
