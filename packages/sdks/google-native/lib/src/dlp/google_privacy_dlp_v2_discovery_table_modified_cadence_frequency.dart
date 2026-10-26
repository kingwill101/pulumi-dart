import 'package:pulumi/pulumi.dart' as pulumi;

/// How frequently data profiles can be updated when tables are modified. Defaults to never.
enum GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency implements pulumi.PulumiEnum<String> {
  updateFrequencyUnspecified("UPDATE_FREQUENCY_UNSPECIFIED"),
  updateFrequencyNever("UPDATE_FREQUENCY_NEVER"),
  updateFrequencyDaily("UPDATE_FREQUENCY_DAILY"),
  updateFrequencyMonthly("UPDATE_FREQUENCY_MONTHLY");

  const GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency(this.wireValue);
  @override
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
