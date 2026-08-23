// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_programmableconnectivity_get_gateway_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_programmableconnectivity_get_gateway_args_doc}
class GetGatewayArgs {
  /// Azure Programmable Connectivity Gateway Name.
  final pulumi.Input<String> gatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGatewayArgs].
  /// [gatewayName] Azure Programmable Connectivity Gateway Name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetGatewayArgs({
    required this.gatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
