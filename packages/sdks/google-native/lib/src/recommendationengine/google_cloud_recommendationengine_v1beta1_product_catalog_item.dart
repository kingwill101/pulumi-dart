// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recommendationengine_v1beta1_image.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_exact_price.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_price_range.dart';
import 'google_cloud_recommendationengine_v1beta1_product_catalog_item_stock_state.dart';

/// ProductCatalogItem captures item metadata specific to retail products.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItem {
  /// Optional. The available quantity of the item.
  final pulumi.Input<String>? availableQuantity;
  /// Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB..
  final pulumi.Input<String>? canonicalProductUri;
  /// Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.5} The profit of selling this item is computed like so: * If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  final pulumi.Input<Map<String, String>>? costs;
  /// Optional. Only required if the price is set. Currency code for price/costs. Use three-character ISO-4217 code.
  final pulumi.Input<String>? currencyCode;
  /// Optional. The exact product price.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice>? exactPrice;
  /// Optional. Product images for the catalog item.
  final pulumi.Input<List<GoogleCloudRecommendationengineV1beta1Image>>? images;
  /// Optional. The product price range.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange>? priceRange;
  /// Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  final pulumi.Input<GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState>? stockState;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ProductCatalogItem].
  /// [availableQuantity] Optional. The available quantity of the item.
  /// [canonicalProductUri] Optional. Canonical URL directly linking to the item detail page with a length limit of 5 KiB..
  /// [costs] Optional. A map to pass the costs associated with the product. For example: {"manufacturing": 45.5} The profit of selling this item is computed like so: * If 'exactPrice' is provided, profit = displayPrice - sum(costs) * If 'priceRange' is provided, profit = minPrice - sum(costs)
  /// [currencyCode] Optional. Only required if the price is set. Currency code for price/costs. Use three-character ISO-4217 code.
  /// [exactPrice] Optional. The exact product price.
  /// [images] Optional. Product images for the catalog item.
  /// [priceRange] Optional. The product price range.
  /// [stockState] Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
  const GoogleCloudRecommendationengineV1beta1ProductCatalogItem({
    this.availableQuantity,
    this.canonicalProductUri,
    this.costs,
    this.currencyCode,
    this.exactPrice,
    this.images,
    this.priceRange,
    this.stockState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableQuantity': ?availableQuantity,
      'canonicalProductUri': ?canonicalProductUri,
      'costs': ?costs,
      'currencyCode': ?currencyCode,
      'exactPrice': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice, Map<String, dynamic>>(exactPrice, (value) => value.toMap()),
      'images': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRecommendationengineV1beta1Image>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<GoogleCloudRecommendationengineV1beta1Image, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priceRange': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange, Map<String, dynamic>>(priceRange, (value) => value.toMap()),
      'stockState': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState, String>(stockState, (value) => value.wireValue),
    };
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItem.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItem(
      availableQuantity: (() { final guardedValue = map['availableQuantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      canonicalProductUri: (() { final guardedValue = map['canonicalProductUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      costs: (() { final guardedValue = map['costs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exactPrice: (() { final guardedValue = map['exactPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRecommendationengineV1beta1Image>(guardedValue, (value) => GoogleCloudRecommendationengineV1beta1Image.fromMap((value as Map).cast<String, dynamic>()))); })(),
      priceRange: (() { final guardedValue = map['priceRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecommendationengineV1beta1ProductCatalogItemPriceRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stockState: (() { final guardedValue = map['stockState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRecommendationengineV1beta1ProductCatalogItemStockState.fromValue(guardedValue as String)); })(),
    );
  }
}
