// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recommendationengine_v1beta1_image_response.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_exact_price_response.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_price_range_response.dart';

/// ProductCatalogItem captures item metadata specific to retail products.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse {
  /// Optional. The available quantity of the item.
  final pulumi.Input<String> availableQuantity;
  /// Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB..
  final pulumi.Input<String> canonicalProductUri;
  /// Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.5} The profit of selling this item is computed like so: * If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  final pulumi.Input<Map<String, String>> costs;
  /// Optional. Only required if the price is set. Currency code for price/costs. Use three-character ISO-4217 code.
  final pulumi.Input<String> currencyCode;
  /// Optional. The exact product price.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse> exactPrice;
  /// Optional. Product images for the catalog item.
  final pulumi.Input<List<GoogleCloudRecommendationengineV1beta1ImageResponse>> images;
  /// Optional. The product price range.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse> priceRange;
  /// Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  final pulumi.Input<String> stockState;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse].
  /// [availableQuantity] Optional. The available quantity of the item.
  /// [canonicalProductUri] Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB..
  /// [costs] Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.5} The profit of selling this item is computed like so: * If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  /// [currencyCode] Optional. Only required if the price is set. Currency code for price/costs. Use three-character ISO-4217 code.
  /// [exactPrice] Optional. The exact product price.
  /// [images] Optional. Product images for the catalog item.
  /// [priceRange] Optional. The product price range.
  /// [stockState] Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse({
    required this.availableQuantity,
    required this.canonicalProductUri,
    required this.costs,
    required this.currencyCode,
    required this.exactPrice,
    required this.images,
    required this.priceRange,
    required this.stockState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableQuantity': availableQuantity,
      'canonicalProductUri': canonicalProductUri,
      'costs': costs,
      'currencyCode': currencyCode,
      'exactPrice': pulumi.Input.mapInputValue<GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse, Map<String, dynamic>>(exactPrice, (value) => value.toMap()),
      'images': pulumi.Input.mapInputValue<List<GoogleCloudRecommendationengineV1beta1ImageResponse>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<GoogleCloudRecommendationengineV1beta1ImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priceRange': pulumi.Input.mapInputValue<GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse, Map<String, dynamic>>(priceRange, (value) => value.toMap()),
      'stockState': stockState,
    };
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItemResponse(
      availableQuantity: (map['availableQuantity'] as String).input(),
      canonicalProductUri: (map['canonicalProductUri'] as String).input(),
      costs: ((map['costs'] as Map).cast<String, String>()).input(),
      currencyCode: (map['currencyCode'] as String).input(),
      exactPrice: (GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse.fromMap((map['exactPrice'] as Map).cast<String, dynamic>())).input(),
      images: (pulumi.Input.decodeList<GoogleCloudRecommendationengineV1beta1ImageResponse>(map['images'], (value) => GoogleCloudRecommendationengineV1beta1ImageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priceRange: (GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRangeResponse.fromMap((map['priceRange'] as Map).cast<String, dynamic>())).input(),
      stockState: (map['stockState'] as String).input(),
    );
  }
}

