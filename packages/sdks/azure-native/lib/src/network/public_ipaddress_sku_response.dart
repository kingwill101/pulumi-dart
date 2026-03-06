// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a public IP address.
class PublicIPAddressSkuResponse {
  /// Name of a public IP address SKU.
  final pulumi.Input<String>? name;
  /// Tier of a public IP address SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [PublicIPAddressSkuResponse].
  /// [name] Name of a public IP address SKU.
  /// [tier] Tier of a public IP address SKU.
  const PublicIPAddressSkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory PublicIPAddressSkuResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressSkuResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

