// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The price information of a Product.
class GoogleCloudRetailV2betaPriceInfo {
  /// The costs associated with the sale of a particular product. Used for gross profit reporting. * Profit = price - cost Google Merchant Center property [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  final pulumi.Input<double>? cost;
  /// The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html). If this field is an unrecognizable currency code, an INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the same Product.primary_product_id must share the same currency_code. Otherwise, a FAILED_PRECONDITION error is returned.
  final pulumi.Input<String>? currencyCode;
  /// Price of the product without any discount. If zero, by default set to be the price. If set, original_price should be greater than or equal to price, otherwise an INVALID_ARGUMENT error is thrown.
  final pulumi.Input<double>? originalPrice;
  /// Price of the product. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371). Schema.org property [Offer.price](https://schema.org/price).
  final pulumi.Input<double>? price;
  /// The timestamp when the price starts to be effective. This can be set as a future timestamp, and the price is only used for search after price_effective_time. If so, the original_price must be set and original_price is used before price_effective_time. Do not set if price is always effective because it will cause additional latency during search.
  final pulumi.Input<String>? priceEffectiveTime;
  /// The timestamp when the price stops to be effective. The price is used for search before price_expire_time. If this field is set, the original_price must be set and original_price is used after price_expire_time. Do not set if price is always effective because it will cause additional latency during search.
  final pulumi.Input<String>? priceExpireTime;

  /// Creates a new [GoogleCloudRetailV2betaPriceInfo].
  /// [cost] The costs associated with the sale of a particular product. Used for gross profit reporting. * Profit = price - cost Google Merchant Center property [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  /// [currencyCode] The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html). If this field is an unrecognizable currency code, an INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the same Product.primary_product_id must share the same currency_code. Otherwise, a FAILED_PRECONDITION error is returned.
  /// [originalPrice] Price of the product without any discount. If zero, by default set to be the price. If set, original_price should be greater than or equal to price, otherwise an INVALID_ARGUMENT error is thrown.
  /// [price] Price of the product. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371). Schema.org property [Offer.price](https://schema.org/price).
  /// [priceEffectiveTime] The timestamp when the price starts to be effective. This can be set as a future timestamp, and the price is only used for search after price_effective_time. If so, the original_price must be set and original_price is used before price_effective_time. Do not set if price is always effective because it will cause additional latency during search.
  /// [priceExpireTime] The timestamp when the price stops to be effective. The price is used for search before price_expire_time. If this field is set, the original_price must be set and original_price is used after price_expire_time. Do not set if price is always effective because it will cause additional latency during search.
  const GoogleCloudRetailV2betaPriceInfo({
    this.cost,
    this.currencyCode,
    this.originalPrice,
    this.price,
    this.priceEffectiveTime,
    this.priceExpireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cost': ?cost,
      'currencyCode': ?currencyCode,
      'originalPrice': ?originalPrice,
      'price': ?price,
      'priceEffectiveTime': ?priceEffectiveTime,
      'priceExpireTime': ?priceExpireTime,
    };
  }

  factory GoogleCloudRetailV2betaPriceInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaPriceInfo(
      cost: (() { final guardedValue = map['cost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originalPrice: (() { final guardedValue = map['originalPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      price: (() { final guardedValue = map['price']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      priceEffectiveTime: (() { final guardedValue = map['priceEffectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priceExpireTime: (() { final guardedValue = map['priceExpireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
