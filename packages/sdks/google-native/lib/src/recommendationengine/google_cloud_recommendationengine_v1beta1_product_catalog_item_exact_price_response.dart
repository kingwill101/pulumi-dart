// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exact product price.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse {
  /// Optional. Display price of the product.
  final pulumi.Input<double> displayPrice;
  /// Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  final pulumi.Input<double> originalPrice;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse].
  /// [displayPrice] Optional. Display price of the product.
  /// [originalPrice] Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  const GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse({
    required this.displayPrice,
    required this.originalPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayPrice': displayPrice,
      'originalPrice': originalPrice,
    };
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse(
      displayPrice: pulumi.Input.fromValue(map['displayPrice'] as double),
      originalPrice: pulumi.Input.fromValue(map['originalPrice'] as double),
    );
  }
}
