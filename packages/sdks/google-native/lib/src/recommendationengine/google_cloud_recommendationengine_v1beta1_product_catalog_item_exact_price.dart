// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exact product price.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice {
  /// Optional. Display price of the product.
  final pulumi.Input<double>? displayPrice;
  /// Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  final pulumi.Input<double>? originalPrice;

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
      displayPrice: (() { final guardedValue = map['displayPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      originalPrice: (() { final guardedValue = map['originalPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

