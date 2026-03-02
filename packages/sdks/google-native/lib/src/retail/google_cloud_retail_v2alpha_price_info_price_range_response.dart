// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_interval_response.dart';

/// The price range of all variant Product having the same Product.primary_product_id.
class GoogleCloudRetailV2alphaPriceInfoPriceRangeResponse {
  /// The inclusive Product.pricing_info.original_price internal of all variant Product having the same Product.primary_product_id.
  final pulumi.Input<GoogleCloudRetailV2alphaIntervalResponse> originalPrice;
  /// The inclusive Product.pricing_info.price interval of all variant Product having the same Product.primary_product_id.
  final pulumi.Input<GoogleCloudRetailV2alphaIntervalResponse> price;

  /// Creates a new [GoogleCloudRetailV2alphaPriceInfoPriceRangeResponse].
  /// [originalPrice] The inclusive Product.pricing_info.original_price internal of all variant Product having the same Product.primary_product_id.
  /// [price] The inclusive Product.pricing_info.price interval of all variant Product having the same Product.primary_product_id.
  GoogleCloudRetailV2alphaPriceInfoPriceRangeResponse({
    required this.originalPrice,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalPrice': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaIntervalResponse, Map<String, dynamic>>(originalPrice, (value) => value.toMap()),
      'price': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaIntervalResponse, Map<String, dynamic>>(price, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2alphaPriceInfoPriceRangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaPriceInfoPriceRangeResponse(
      originalPrice: (GoogleCloudRetailV2alphaIntervalResponse.fromMap((map['originalPrice'] as Map).cast<String, dynamic>())).input(),
      price: (GoogleCloudRetailV2alphaIntervalResponse.fromMap((map['price'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

