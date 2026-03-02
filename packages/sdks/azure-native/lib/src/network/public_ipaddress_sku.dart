// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of a public IP address.
class PublicIPAddressSku {
  /// Name of a public IP address SKU.
  final pulumi.Input<String>? name;
  /// Tier of a public IP address SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [PublicIPAddressSku].
  /// [name] Name of a public IP address SKU.
  /// [tier] Tier of a public IP address SKU.
  PublicIPAddressSku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory PublicIPAddressSku.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressSku(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

