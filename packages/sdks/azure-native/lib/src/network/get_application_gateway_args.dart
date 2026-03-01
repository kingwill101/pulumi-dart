// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_application_gateway_args_doc}
/// Arguments for getApplicationGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_application_gateway_args_doc}
class GetApplicationGatewayArgs {
  /// The name of the application gateway.
  final pulumi.Input<String> applicationGatewayName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationGatewayArgs].
  /// [applicationGatewayName] The name of the application gateway.
  /// [resourceGroupName] The name of the resource group.
  GetApplicationGatewayArgs({
    required pulumi.Output<String> applicationGatewayName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      applicationGatewayName = pulumi.Input.asInput<String>(applicationGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayName': applicationGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayArgs(
      applicationGatewayName: pulumi.Output.create<String>(map['applicationGatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

