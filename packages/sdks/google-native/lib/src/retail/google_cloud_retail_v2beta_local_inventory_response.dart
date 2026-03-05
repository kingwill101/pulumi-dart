// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_price_info_response.dart';

/// The inventory information at a place (e.g. a store) identified by a place ID.
class GoogleCloudRetailV2betaLocalInventoryResponse {
  /// Additional local inventory attributes, for example, store name, promotion tags, etc. This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT error is returned: * At most 30 attributes are allowed. * The key must be a UTF-8 encoded string with a length limit of 32 characters. * The key must match the pattern: `a-zA-Z0-9*`. For example, key0LikeThis or KEY_1_LIKE_THIS. * The attribute values must be of the same type (text or number). * Only 1 value is allowed for each attribute. * For text values, the length limit is 256 UTF-8 characters. * The attribute does not support search. The `searchable` field should be unset or set to false. * The max summed total bytes of custom attribute keys and values per product is 5MiB.
  final pulumi.Input<Map<String, String>> attributes;
  /// Input only. Supported fulfillment types. Valid fulfillment type values include commonly used types (such as pickup in store and same day delivery), and custom types. Customers have to map custom types to their display names before rendering UI. Supported values: * "pickup-in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5" If this field is set to an invalid value other than these, an INVALID_ARGUMENT error is returned. All the elements must be distinct. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<List<String>> fulfillmentTypes;
  /// The place ID for the current set of inventory information.
  final pulumi.Input<String> placeId;
  /// Product price and cost information. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371).
  final pulumi.Input<GoogleCloudRetailV2betaPriceInfoResponse> priceInfo;

  /// Creates a new [GoogleCloudRetailV2betaLocalInventoryResponse].
  /// [attributes] Additional local inventory attributes, for example, store name, promotion tags, etc. This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT error is returned: * At most 30 attributes are allowed. * The key must be a UTF-8 encoded string with a length limit of 32 characters. * The key must match the pattern: `a-zA-Z0-9*`. For example, key0LikeThis or KEY_1_LIKE_THIS. * The attribute values must be of the same type (text or number). * Only 1 value is allowed for each attribute. * For text values, the length limit is 256 UTF-8 characters. * The attribute does not support search. The `searchable` field should be unset or set to false. * The max summed total bytes of custom attribute keys and values per product is 5MiB.
  /// [fulfillmentTypes] Input only. Supported fulfillment types. Valid fulfillment type values include commonly used types (such as pickup in store and same day delivery), and custom types. Customers have to map custom types to their display names before rendering UI. Supported values: * "pickup-in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5" If this field is set to an invalid value other than these, an INVALID_ARGUMENT error is returned. All the elements must be distinct. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [placeId] The place ID for the current set of inventory information.
  /// [priceInfo] Product price and cost information. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371).
  GoogleCloudRetailV2betaLocalInventoryResponse({
    required this.attributes,
    required this.fulfillmentTypes,
    required this.placeId,
    required this.priceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'fulfillmentTypes': fulfillmentTypes,
      'placeId': placeId,
      'priceInfo': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaPriceInfoResponse, Map<String, dynamic>>(priceInfo, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2betaLocalInventoryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaLocalInventoryResponse(
      attributes: pulumi.Input.fromValue((map['attributes'] as Map).cast<String, String>()),
      fulfillmentTypes: pulumi.Input.fromValue((map['fulfillmentTypes'] as List).cast<String>()),
      placeId: pulumi.Input.fromValue(map['placeId'] as String),
      priceInfo: pulumi.Input.fromValue(GoogleCloudRetailV2betaPriceInfoResponse.fromMap((map['priceInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

