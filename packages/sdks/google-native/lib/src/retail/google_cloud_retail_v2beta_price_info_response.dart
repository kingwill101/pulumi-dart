// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_price_info_price_range_response.dart';

/// The price information of a Product.
class GoogleCloudRetailV2betaPriceInfoResponse {
  /// The costs associated with the sale of a particular product. Used for gross profit reporting. * Profit = price - cost Google Merchant Center property [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  final pulumi.Input<double> cost;

  /// The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html). If this field is an unrecognizable currency code, an INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the same Product.primary_product_id must share the same currency_code. Otherwise, a FAILED_PRECONDITION error is returned.
  final pulumi.Input<String> currencyCode;

  /// Price of the product without any discount. If zero, by default set to be the price. If set, original_price should be greater than or equal to price, otherwise an INVALID_ARGUMENT error is thrown.
  final pulumi.Input<double> originalPrice;

  /// Price of the product. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371). Schema.org property [Offer.price](https://schema.org/price).
  final pulumi.Input<double> price;

  /// The timestamp when the price starts to be effective. This can be set as a future timestamp, and the price is only used for search after price_effective_time. If so, the original_price must be set and original_price is used before price_effective_time. Do not set if price is always effective because it will cause additional latency during search.
  final pulumi.Input<String> priceEffectiveTime;

  /// The timestamp when the price stops to be effective. The price is used for search before price_expire_time. If this field is set, the original_price must be set and original_price is used after price_expire_time. Do not set if price is always effective because it will cause additional latency during search.
  final pulumi.Input<String> priceExpireTime;

  /// The price range of all the child Product.Type.VARIANT Products grouped together on the Product.Type.PRIMARY Product. Only populated for Product.Type.PRIMARY Products. Note: This field is OUTPUT_ONLY for ProductService.GetProduct. Do not set this field in API requests.
  final pulumi.Input<GoogleCloudRetailV2betaPriceInfoPriceRangeResponse>
  priceRange;

  /// Creates a new [GoogleCloudRetailV2betaPriceInfoResponse].
  /// [cost] The costs associated with the sale of a particular product. Used for gross profit reporting. * Profit = price - cost Google Merchant Center property [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  /// [currencyCode] The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html). If this field is an unrecognizable currency code, an INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the same Product.primary_product_id must share the same currency_code. Otherwise, a FAILED_PRECONDITION error is returned.
  /// [originalPrice] Price of the product without any discount. If zero, by default set to be the price. If set, original_price should be greater than or equal to price, otherwise an INVALID_ARGUMENT error is thrown.
  /// [price] Price of the product. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371). Schema.org property [Offer.price](https://schema.org/price).
  /// [priceEffectiveTime] The timestamp when the price starts to be effective. This can be set as a future timestamp, and the price is only used for search after price_effective_time. If so, the original_price must be set and original_price is used before price_effective_time. Do not set if price is always effective because it will cause additional latency during search.
  /// [priceExpireTime] The timestamp when the price stops to be effective. The price is used for search before price_expire_time. If this field is set, the original_price must be set and original_price is used after price_expire_time. Do not set if price is always effective because it will cause additional latency during search.
  /// [priceRange] The price range of all the child Product.Type.VARIANT Products grouped together on the Product.Type.PRIMARY Product. Only populated for Product.Type.PRIMARY Products. Note: This field is OUTPUT_ONLY for ProductService.GetProduct. Do not set this field in API requests.
  GoogleCloudRetailV2betaPriceInfoResponse({
    required this.cost,
    required this.currencyCode,
    required this.originalPrice,
    required this.price,
    required this.priceEffectiveTime,
    required this.priceExpireTime,
    required this.priceRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cost': cost,
      'currencyCode': currencyCode,
      'originalPrice': originalPrice,
      'price': price,
      'priceEffectiveTime': priceEffectiveTime,
      'priceExpireTime': priceExpireTime,
      'priceRange':
          pulumi.Input.mapInputValue<
            GoogleCloudRetailV2betaPriceInfoPriceRangeResponse,
            Map<String, dynamic>
          >(priceRange, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2betaPriceInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaPriceInfoResponse(
      cost: pulumi.Input.fromValue(map['cost'] as double),
      currencyCode: pulumi.Input.fromValue(map['currencyCode'] as String),
      originalPrice: pulumi.Input.fromValue(map['originalPrice'] as double),
      price: pulumi.Input.fromValue(map['price'] as double),
      priceEffectiveTime: pulumi.Input.fromValue(
        map['priceEffectiveTime'] as String,
      ),
      priceExpireTime: pulumi.Input.fromValue(map['priceExpireTime'] as String),
      priceRange: pulumi.Input.fromValue(
        GoogleCloudRetailV2betaPriceInfoPriceRangeResponse.fromMap(
          (map['priceRange']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
