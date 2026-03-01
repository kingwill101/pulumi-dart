// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayApi resources.
class GatewayApiState {
  /// The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created.
  final pulumi.Input<String>? apiId;
  /// The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created.
  final pulumi.Input<String>? gatewayId;

  /// Creates a new [GatewayApiState].
  /// [apiId] The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created.
  /// [gatewayId] The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created.
  GatewayApiState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? gatewayId,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'gatewayId': ?gatewayId,
    };
  }

  factory GatewayApiState.fromMap(Map<String, dynamic> map) {
    return GatewayApiState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
    );
  }
}

