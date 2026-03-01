// ignore_for_file: unused_element, unnecessary_cast


/// An ARM Resource SKU.
class Sku {
  /// Capacity of the particular SKU.
  final int? capacity;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here.
  final String? family;
  /// The name of the SKU, typically, a letter + Number code, e.g. P3.
  final String name;
  /// Size of the particular SKU
  final String? size;
  /// The tier or edition of the particular SKU, e.g. Basic, Premium.
  final String? tier;

  /// Creates a new [Sku].
  /// [capacity] Capacity of the particular SKU.
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here.
  /// [name] The name of the SKU, typically, a letter + Number code, e.g. P3.
  /// [size] Size of the particular SKU
  /// [tier] The tier or edition of the particular SKU, e.g. Basic, Premium.
  Sku({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

