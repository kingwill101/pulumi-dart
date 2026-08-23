// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_gateway_api_gateway_api_args_doc}
/// The set of arguments for GatewayApi.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_api_gateway_api_args_doc}
class GatewayApiArgs {
  /// The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created.
  final pulumi.Input<String> apiId;
  /// The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created.
  final pulumi.Input<String> gatewayId;

  /// Creates a new [GatewayApiArgs].
  /// [apiId] The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created.
  /// [gatewayId] The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created.
  const GatewayApiArgs({
    required this.apiId,
    required this.gatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'gatewayId': gatewayId,
    };
  }

  factory GatewayApiArgs.fromMap(Map<String, dynamic> map) {
    return GatewayApiArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
    );
  }
}
