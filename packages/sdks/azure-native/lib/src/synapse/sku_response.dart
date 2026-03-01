// ignore_for_file: unused_element, unnecessary_cast


/// SQL pool SKU
class SkuResponse {
  /// If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  final int? capacity;
  /// The SKU name
  final String? name;
  /// The service tier
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  /// [name] The SKU name
  /// [tier] The service tier
  SkuResponse({
    this.capacity,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

