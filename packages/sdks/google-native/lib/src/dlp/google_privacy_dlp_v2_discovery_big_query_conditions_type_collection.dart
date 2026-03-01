/// Restrict discovery to categories of table types.
enum GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection {
  bigQueryCollectionUnspecified("BIG_QUERY_COLLECTION_UNSPECIFIED"),
  bigQueryCollectionAllTypes("BIG_QUERY_COLLECTION_ALL_TYPES"),
  bigQueryCollectionOnlySupportedTypes("BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES");

  const GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection(this.value);
  final String value;

  static GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection fromValue(String value) {
    for (final item in GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2DiscoveryBigQueryConditionsTypeCollection value: $value');
  }
}

