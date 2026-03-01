// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_service_gateway_args_doc}
/// Arguments for getServiceGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_service_gateway_args_doc}
class GetServiceGatewayArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service gateway.
  final pulumi.Input<String> serviceGatewayName;

  /// Creates a new [GetServiceGatewayArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceGatewayName] The name of the service gateway.
  GetServiceGatewayArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceGatewayName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceGatewayName = pulumi.Input.asInput<String>(serviceGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceGatewayName': serviceGatewayName,
    };
  }

  factory GetServiceGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceGatewayArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceGatewayName: pulumi.Output.create<String>(map['serviceGatewayName'] as String),
    );
  }
}

