// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a service gateway.
class ServiceGatewaySkuResponse {
  /// Name of a service gateway SKU.
  final pulumi.Input<String>? name;
  /// Tier of a service gateway SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [ServiceGatewaySkuResponse].
  /// [name] Name of a service gateway SKU.
  /// [tier] Tier of a service gateway SKU.
  ServiceGatewaySkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory ServiceGatewaySkuResponse.fromMap(Map<String, dynamic> map) {
    return ServiceGatewaySkuResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

