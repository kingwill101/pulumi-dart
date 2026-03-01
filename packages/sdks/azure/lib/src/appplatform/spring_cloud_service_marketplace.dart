// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudServiceMarketplace {
  /// Specifies the plan ID of the 3rd Party Artifact that is being procured.
  final String plan;
  /// Specifies the 3rd Party artifact that is being procured.
  final String product;
  /// Specifies the publisher ID of the 3rd Party Artifact that is being procured.
  final String publisher;

  /// Creates a new [SpringCloudServiceMarketplace].
  /// [plan] Specifies the plan ID of the 3rd Party Artifact that is being procured.
  /// [product] Specifies the 3rd Party artifact that is being procured.
  /// [publisher] Specifies the publisher ID of the 3rd Party Artifact that is being procured.
  SpringCloudServiceMarketplace({
    required this.plan,
    required this.product,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': plan,
      'product': product,
      'publisher': publisher,
    };
  }

  factory SpringCloudServiceMarketplace.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceMarketplace(
      plan: map['plan'] as String,
      product: map['product'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

