// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a public IP prefix.
class PublicIPPrefixSku {
  /// Name of a public IP prefix SKU.
  final pulumi.Input<dynamic>? name;
  /// Tier of a public IP prefix SKU.
  final pulumi.Input<dynamic>? tier;

  /// Creates a new [PublicIPPrefixSku].
  /// [name] Name of a public IP prefix SKU.
  /// [tier] Tier of a public IP prefix SKU.
  const PublicIPPrefixSku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory PublicIPPrefixSku.fromMap(Map<String, dynamic> map) {
    return PublicIPPrefixSku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
