// ignore_for_file: unused_element, unnecessary_cast


/// The SKU that defines the tier and kind of the peering.
class PeeringSkuResponse {
  /// The family of the peering SKU.
  final String family;
  /// The name of the peering SKU.
  final String? name;
  /// The size of the peering SKU.
  final String size;
  /// The tier of the peering SKU.
  final String tier;

  /// Creates a new [PeeringSkuResponse].
  /// [family] The family of the peering SKU.
  /// [name] The name of the peering SKU.
  /// [size] The size of the peering SKU.
  /// [tier] The tier of the peering SKU.
  PeeringSkuResponse({
    required this.family,
    this.name,
    required this.size,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'name': ?name,
      'size': size,
      'tier': tier,
    };
  }

  factory PeeringSkuResponse.fromMap(Map<String, dynamic> map) {
    return PeeringSkuResponse(
      family: map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      size: map['size'] as String,
      tier: map['tier'] as String,
    );
  }
}

