/// Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
enum GoogleCloudDataplexV1ZoneResourceSpecLocationType {
  locationTypeUnspecified("LOCATION_TYPE_UNSPECIFIED"),
  singleRegion("SINGLE_REGION"),
  multiRegion("MULTI_REGION");

  const GoogleCloudDataplexV1ZoneResourceSpecLocationType(this.wireValue);
  final String wireValue;

  static GoogleCloudDataplexV1ZoneResourceSpecLocationType fromValue(String value) {
    for (final item in GoogleCloudDataplexV1ZoneResourceSpecLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1ZoneResourceSpecLocationType value: $value');
  }
}

