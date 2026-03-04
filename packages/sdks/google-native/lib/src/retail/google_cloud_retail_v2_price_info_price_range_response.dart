// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_interval_response.dart';

/// The price range of all variant Product having the same Product.primary_product_id.
class GoogleCloudRetailV2PriceInfoPriceRangeResponse {
  /// The inclusive Product.pricing_info.original_price internal of all variant Product having the same Product.primary_product_id.
  final pulumi.Input<GoogleCloudRetailV2IntervalResponse> originalPrice;

  /// The inclusive Product.pricing_info.price interval of all variant Product having the same Product.primary_product_id.
  final pulumi.Input<GoogleCloudRetailV2IntervalResponse> price;

  /// Creates a new [GoogleCloudRetailV2PriceInfoPriceRangeResponse].
  /// [originalPrice] The inclusive Product.pricing_info.original_price internal of all variant Product having the same Product.primary_product_id.
  /// [price] The inclusive Product.pricing_info.price interval of all variant Product having the same Product.primary_product_id.
  GoogleCloudRetailV2PriceInfoPriceRangeResponse({
    required this.originalPrice,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalPrice':
          pulumi.Input.mapInputValue<
            GoogleCloudRetailV2IntervalResponse,
            Map<String, dynamic>
          >(originalPrice, (value) => value.toMap()),
      'price':
          pulumi.Input.mapInputValue<
            GoogleCloudRetailV2IntervalResponse,
            Map<String, dynamic>
          >(price, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2PriceInfoPriceRangeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2PriceInfoPriceRangeResponse(
      originalPrice: pulumi.Input.fromValue(
        GoogleCloudRetailV2IntervalResponse.fromMap(
          (map['originalPrice']! as Map).cast<String, dynamic>(),
        ),
      ),
      price: pulumi.Input.fromValue(
        GoogleCloudRetailV2IntervalResponse.fromMap(
          (map['price']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
