// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_get_gateway_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_get_gateway_args_doc}
class GetGatewayArgs {
  /// The identity of the gateway.
  final pulumi.Input<String> gatewayResourceName;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGatewayArgs].
  /// [gatewayResourceName] The identity of the gateway.
  /// [resourceGroupName] Azure resource group name
  GetGatewayArgs({
    required this.gatewayResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayResourceName': gatewayResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      gatewayResourceName: pulumi.Input.fromValue(map['gatewayResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

