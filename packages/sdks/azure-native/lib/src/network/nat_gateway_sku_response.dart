// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of nat gateway.
class NatGatewaySkuResponse {
  /// Name of Nat Gateway SKU.
  final pulumi.Input<String>? name;

  /// Creates a new [NatGatewaySkuResponse].
  /// [name] Name of Nat Gateway SKU.
  NatGatewaySkuResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory NatGatewaySkuResponse.fromMap(Map<String, dynamic> map) {
    return NatGatewaySkuResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

