// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ai_gateway_dynamic_routing_get_ai_gateway_dynamic_routing_args_doc}
/// Arguments for getAiGatewayDynamicRouting.
/// {@endtemplate}
/// {@macro pulumi_index_get_ai_gateway_dynamic_routing_get_ai_gateway_dynamic_routing_args_doc}
class GetAiGatewayDynamicRoutingArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> gatewayId;
  /// The ID of this resource.
  final pulumi.Input<String> id;

  /// Creates a new [GetAiGatewayDynamicRoutingArgs].
  /// [accountId] Optional.
  /// [gatewayId] Required.
  /// [id] The ID of this resource.
  const GetAiGatewayDynamicRoutingArgs({
    this.accountId,
    required this.gatewayId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'gatewayId': gatewayId,
      'id': id,
    };
  }

  factory GetAiGatewayDynamicRoutingArgs.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
