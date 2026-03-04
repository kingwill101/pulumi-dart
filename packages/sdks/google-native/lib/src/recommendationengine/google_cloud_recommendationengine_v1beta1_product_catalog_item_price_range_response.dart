// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Product price range when there are a range of prices for different variations of the same product.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse {
  /// The maximum product price.
  final pulumi.Input<double> max;

  /// The minimum product price.
  final pulumi.Input<double> min;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse].
  /// [max] The maximum product price.
  /// [min] The minimum product price.
  GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse(
      max: pulumi.Input.fromValue(map['max'] as double),
      min: pulumi.Input.fromValue(map['min'] as double),
    );
  }
}
