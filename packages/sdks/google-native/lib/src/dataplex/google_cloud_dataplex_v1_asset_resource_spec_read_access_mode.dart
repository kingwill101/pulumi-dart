/// Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
enum GoogleCloudDataplexV1AssetResourceSpecReadAccessMode {
  accessModeUnspecified("ACCESS_MODE_UNSPECIFIED"),
  direct("DIRECT"),
  managed("MANAGED");

  const GoogleCloudDataplexV1AssetResourceSpecReadAccessMode(this.wireValue);
  final String wireValue;

  static GoogleCloudDataplexV1AssetResourceSpecReadAccessMode fromValue(String value) {
    for (final item in GoogleCloudDataplexV1AssetResourceSpecReadAccessMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1AssetResourceSpecReadAccessMode value: $value');
  }
}
