// ignore_for_file: unused_element, unnecessary_cast


/// SKU of a public IP prefix.
class PublicIPPrefixSku {
  /// Name of a public IP prefix SKU.
  final String? name;
  /// Tier of a public IP prefix SKU.
  final String? tier;

  /// Creates a new [PublicIPPrefixSku].
  /// [name] Name of a public IP prefix SKU.
  /// [tier] Tier of a public IP prefix SKU.
  PublicIPPrefixSku({
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
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

