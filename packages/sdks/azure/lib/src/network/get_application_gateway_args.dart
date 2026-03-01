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
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

