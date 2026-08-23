// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_ai_gateway_args_doc}
/// Arguments for getAiGateway.
/// {@endtemplate}
/// {@macro pulumi_web_get_ai_gateway_args_doc}
class GetAiGatewayArgs {
  /// The name of the AI gateway
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAiGatewayArgs].
  /// [name] The name of the AI gateway
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAiGatewayArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAiGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
