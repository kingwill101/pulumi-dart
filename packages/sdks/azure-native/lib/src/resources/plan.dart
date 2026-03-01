// ignore_for_file: unused_element, unnecessary_cast


/// Plan for the resource.
class Plan {
  /// The plan ID.
  final String? name;
  /// The offer ID.
  final String? product;
  /// The promotion code.
  final String? promotionCode;
  /// The publisher ID.
  final String? publisher;
  /// The plan's version.
  final String? version;

  /// Creates a new [Plan].
  /// [name] The plan ID.
  /// [product] The offer ID.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher ID.
  /// [version] The plan's version.
  Plan({
    this.name,
    this.product,
    this.promotionCode,
    this.publisher,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': ?product,
      'promotionCode': ?promotionCode,
      'publisher': ?publisher,
      'version': ?version,
    };
  }

  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      name: map['name'] == null ? null : map['name'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      promotionCode: map['promotionCode'] == null ? null : map['promotionCode'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

