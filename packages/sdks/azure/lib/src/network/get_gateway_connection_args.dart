// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_gateway_connection_get_gateway_connection_args_doc}
/// Arguments for getGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_gateway_connection_get_gateway_connection_args_doc}
class GetGatewayConnectionArgs {
  /// Specifies the name of the Virtual Network Gateway Connection.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Virtual Network Gateway Connection is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGatewayConnectionArgs].
  /// [name] Specifies the name of the Virtual Network Gateway Connection.
  /// [resourceGroupName] Specifies the name of the resource group the Virtual Network Gateway Connection is located in.
  GetGatewayConnectionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGatewayConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayConnectionArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

