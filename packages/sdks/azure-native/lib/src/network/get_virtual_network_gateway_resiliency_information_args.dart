// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_resiliency_information_args_doc}
/// Arguments for getVirtualNetworkGatewayResiliencyInformation.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_resiliency_information_args_doc}
class GetVirtualNetworkGatewayResiliencyInformationArgs {
  /// Attempt to recalculate the Resiliency Information for the gateway
  final pulumi.Input<bool>? attemptRefresh;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayResiliencyInformationArgs].
  /// [attemptRefresh] Attempt to recalculate the Resiliency Information for the gateway
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  GetVirtualNetworkGatewayResiliencyInformationArgs({
    pulumi.Output<bool>? attemptRefresh,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkGatewayName,
  }) :
      attemptRefresh = pulumi.Input.asOptionalInput<bool>(attemptRefresh),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkGatewayName = pulumi.Input.asInput<String>(virtualNetworkGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptRefresh': ?attemptRefresh,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayResiliencyInformationArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayResiliencyInformationArgs(
      attemptRefresh: map['attemptRefresh'] == null ? null : pulumi.Output.create<bool>(map['attemptRefresh'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkGatewayName: pulumi.Output.create<String>(map['virtualNetworkGatewayName'] as String),
    );
  }
}

