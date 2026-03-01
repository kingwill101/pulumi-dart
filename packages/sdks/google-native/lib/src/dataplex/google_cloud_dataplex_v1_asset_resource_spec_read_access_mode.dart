/// Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets.
enum GoogleCloudDataplexV1AssetResourceSpecReadAccessMode {
  accessModeUnspecified("ACCESS_MODE_UNSPECIFIED"),
  direct("DIRECT"),
  managed("MANAGED");

  const GoogleCloudDataplexV1AssetResourceSpecReadAccessMode(this.value);
  final String value;

  static GoogleCloudDataplexV1AssetResourceSpecReadAccessMode fromValue(String value) {
    for (final item in GoogleCloudDataplexV1AssetResourceSpecReadAccessMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1AssetResourceSpecReadAccessMode value: $value');
  }
}

