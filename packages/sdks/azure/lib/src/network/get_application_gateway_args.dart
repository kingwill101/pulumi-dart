// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_application_gateway_get_application_gateway_args_doc}
/// Arguments for getApplicationGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_application_gateway_get_application_gateway_args_doc}
class GetApplicationGatewayArgs {
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Application Gateway exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationGatewayArgs].
  /// [name] The name of this Application Gateway.
  /// [resourceGroupName] The name of the Resource Group where the Application Gateway exists.
  GetApplicationGatewayArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

