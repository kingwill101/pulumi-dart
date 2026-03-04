/// How frequently profiles may be updated when schemas are modified. Defaults to monthly.
enum GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency {
  updateFrequencyUnspecified("UPDATE_FREQUENCY_UNSPECIFIED"),
  updateFrequencyNever("UPDATE_FREQUENCY_NEVER"),
  updateFrequencyDaily("UPDATE_FREQUENCY_DAILY"),
  updateFrequencyMonthly("UPDATE_FREQUENCY_MONTHLY");

  const GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency(
    this.wireValue,
  );
  final String wireValue;

  static GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency fromValue(
    String value,
  ) {
    for (final item
        in GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency value: $value',
    );
  }
}
