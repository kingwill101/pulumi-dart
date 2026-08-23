// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a public IP prefix.
class PublicIPPrefixSkuResponse {
  /// Name of a public IP prefix SKU.
  final pulumi.Input<String>? name;
  /// Tier of a public IP prefix SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [PublicIPPrefixSkuResponse].
  /// [name] Name of a public IP prefix SKU.
  /// [tier] Tier of a public IP prefix SKU.
  const PublicIPPrefixSkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory PublicIPPrefixSkuResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPPrefixSkuResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
