// ignore_for_file: unused_element, unnecessary_cast


/// Plan for the managed application.
class Plan {
  /// The plan name.
  final String name;
  /// The product code.
  final String product;
  /// The promotion code.
  final String? promotionCode;
  /// The publisher ID.
  final String publisher;
  /// The plan's version.
  final String version;

  /// Creates a new [Plan].
  /// [name] The plan name.
  /// [product] The product code.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher ID.
  /// [version] The plan's version.
  Plan({
    required this.name,
    required this.product,
    this.promotionCode,
    required this.publisher,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'promotionCode': ?promotionCode,
      'publisher': publisher,
      'version': version,
    };
  }

  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      name: map['name'] as String,
      product: map['product'] as String,
      promotionCode: map['promotionCode'] == null ? null : map['promotionCode'] as String,
      publisher: map['publisher'] as String,
      version: map['version'] as String,
    );
  }
}

