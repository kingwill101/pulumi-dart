// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fulfillment information, such as the store IDs for in-store pickup or region IDs for different shipping methods.
class GoogleCloudRetailV2alphaFulfillmentInfo {
  /// The IDs for this type, such as the store IDs for FulfillmentInfo.type.pickup-in-store or the region IDs for FulfillmentInfo.type.same-day-delivery. A maximum of 3000 values are allowed. Each value must be a string with a length limit of 30 characters, matching the pattern `[a-zA-Z0-9_-]+`, such as "store1" or "REGION-2". Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<List<String>>? placeIds;
  /// The fulfillment type, including commonly used types (such as pickup in store and same day delivery), and custom types. Customers have to map custom types to their display names before rendering UI. Supported values: * "pickup-in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5" If this field is set to an invalid value other than these, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String>? type;

  /// Creates a new [GoogleCloudRetailV2alphaFulfillmentInfo].
  /// [placeIds] The IDs for this type, such as the store IDs for FulfillmentInfo.type.pickup-in-store or the region IDs for FulfillmentInfo.type.same-day-delivery. A maximum of 3000 values are allowed. Each value must be a string with a length limit of 30 characters, matching the pattern `[a-zA-Z0-9_-]+`, such as "store1" or "REGION-2". Otherwise, an INVALID_ARGUMENT error is returned.
  /// [type] The fulfillment type, including commonly used types (such as pickup in store and same day delivery), and custom types. Customers have to map custom types to their display names before rendering UI. Supported values: * "pickup-in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5" If this field is set to an invalid value other than these, an INVALID_ARGUMENT error is returned.
  GoogleCloudRetailV2alphaFulfillmentInfo({
    this.placeIds,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placeIds': ?placeIds,
      'type': ?type,
    };
  }

  factory GoogleCloudRetailV2alphaFulfillmentInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaFulfillmentInfo(
      placeIds: map['placeIds'] == null ? null : ((map['placeIds'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

