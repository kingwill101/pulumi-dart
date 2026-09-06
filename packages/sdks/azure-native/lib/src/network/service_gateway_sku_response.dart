// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a service gateway.
class ServiceGatewaySkuResponse {
  /// Name of a service gateway SKU.
  final pulumi.Input<String?>? name;
  /// Tier of a service gateway SKU.
  final pulumi.Input<String?>? tier;

  /// Creates a new [ServiceGatewaySkuResponse].
  /// [name] Name of a service gateway SKU.
  /// [tier] Tier of a service gateway SKU.
  const ServiceGatewaySkuResponse({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
