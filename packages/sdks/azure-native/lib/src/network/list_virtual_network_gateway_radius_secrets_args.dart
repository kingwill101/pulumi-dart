// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_virtual_network_gateway_radius_secrets_args_doc}
/// Arguments for listVirtualNetworkGatewayRadiusSecrets.
/// {@endtemplate}
/// {@macro pulumi_network_list_virtual_network_gateway_radius_secrets_args_doc}
class ListVirtualNetworkGatewayRadiusSecretsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [ListVirtualNetworkGatewayRadiusSecretsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  ListVirtualNetworkGatewayRadiusSecretsArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkGatewayName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkGatewayName = pulumi.Input.asInput<String>(virtualNetworkGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory ListVirtualNetworkGatewayRadiusSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListVirtualNetworkGatewayRadiusSecretsArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkGatewayName: pulumi.Output.create<String>(map['virtualNetworkGatewayName'] as String),
    );
  }
}

