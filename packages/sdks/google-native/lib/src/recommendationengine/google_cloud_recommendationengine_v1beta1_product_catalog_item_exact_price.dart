// ignore_for_file: unused_element, unnecessary_cast


/// Exact product price.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice {
  /// Optional. Display price of the product.
  final double? displayPrice;
  /// Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  final double? originalPrice;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice].
  /// [displayPrice] Optional. Display price of the product.
  /// [originalPrice] Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice({
    this.displayPrice,
    this.originalPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayPrice': ?displayPrice,
      'originalPrice': ?originalPrice,
    };
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice(
      displayPrice: map['displayPrice'] == null ? null : map['displayPrice'] as double,
      originalPrice: map['originalPrice'] == null ? null : map['originalPrice'] as double,
    );
  }
}

