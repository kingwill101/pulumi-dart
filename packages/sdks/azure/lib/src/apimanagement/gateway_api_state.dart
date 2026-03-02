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
    this.apiId,
    this.gatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'gatewayId': ?gatewayId,
    };
  }

  factory GatewayApiState.fromMap(Map<String, dynamic> map) {
    return GatewayApiState(
      apiId: map['apiId'] == null ? null : (map['apiId'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
    );
  }
}

