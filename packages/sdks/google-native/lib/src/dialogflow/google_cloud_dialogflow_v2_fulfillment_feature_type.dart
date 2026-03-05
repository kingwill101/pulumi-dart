/// The type of the feature that enabled for fulfillment.
enum GoogleCloudDialogflowV2FulfillmentFeatureType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  smalltalk("SMALLTALK");

  const GoogleCloudDialogflowV2FulfillmentFeatureType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2FulfillmentFeatureType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2FulfillmentFeatureType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2FulfillmentFeatureType value: $value');
  }
}

