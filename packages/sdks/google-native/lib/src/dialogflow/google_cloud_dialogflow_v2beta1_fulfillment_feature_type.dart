/// The type of the feature that enabled for fulfillment.
enum GoogleCloudDialogflowV2beta1FulfillmentFeatureType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  smalltalk("SMALLTALK");

  const GoogleCloudDialogflowV2beta1FulfillmentFeatureType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2beta1FulfillmentFeatureType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1FulfillmentFeatureType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1FulfillmentFeatureType value: $value');
  }
}
