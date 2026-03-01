// ignore_for_file: unused_element, unnecessary_cast


/// SKU of a public IP address.
class PublicIPAddressSkuResponse {
  /// Name of a public IP address SKU.
  final String? name;
  /// Tier of a public IP address SKU.
  final String? tier;

  /// Creates a new [PublicIPAddressSkuResponse].
  /// [name] Name of a public IP address SKU.
  /// [tier] Tier of a public IP address SKU.
  PublicIPAddressSkuResponse({
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
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

