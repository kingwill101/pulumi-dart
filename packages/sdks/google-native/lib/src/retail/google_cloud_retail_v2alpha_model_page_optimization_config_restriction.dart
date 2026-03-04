/// Optional. How to restrict results across panels e.g. can the same ServingConfig be shown on multiple panels at once. If unspecified, default to `UNIQUE_MODEL_RESTRICTION`.
enum GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction {
  restrictionUnspecified("RESTRICTION_UNSPECIFIED"),
  noRestriction("NO_RESTRICTION"),
  uniqueServingConfigRestriction("UNIQUE_SERVING_CONFIG_RESTRICTION"),
  uniqueModelRestriction("UNIQUE_MODEL_RESTRICTION"),
  uniqueModelTypeRestriction("UNIQUE_MODEL_TYPE_RESTRICTION");

  const GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction
  fromValue(String value) {
    for (final item
        in GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction value: $value',
    );
  }
}
