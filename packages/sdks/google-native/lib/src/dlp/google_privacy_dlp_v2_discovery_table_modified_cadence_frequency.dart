/// How frequently data profiles can be updated when tables are modified. Defaults to never.
enum GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency {
  updateFrequencyUnspecified("UPDATE_FREQUENCY_UNSPECIFIED"),
  updateFrequencyNever("UPDATE_FREQUENCY_NEVER"),
  updateFrequencyDaily("UPDATE_FREQUENCY_DAILY"),
  updateFrequencyMonthly("UPDATE_FREQUENCY_MONTHLY");

  const GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency fromValue(String value) {
    for (final item in GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency value: $value');
  }
}

