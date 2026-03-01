// ignore_for_file: unused_element, unnecessary_cast


/// SKU for the resource.
class SkuResponse {
  /// The SKU capacity.
  final int? capacity;
  /// The SKU family.
  final String? family;
  /// The SKU model.
  final String? model;
  /// The SKU name.
  final String name;
  /// The SKU size.
  final String? size;
  /// The SKU tier.
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] The SKU capacity.
  /// [family] The SKU family.
  /// [model] The SKU model.
  /// [name] The SKU name.
  /// [size] The SKU size.
  /// [tier] The SKU tier.
  SkuResponse({
    this.capacity,
    this.family,
    this.model,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'model': ?model,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

