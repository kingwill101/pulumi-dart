enum GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem {
  tableModificationUnspecified("TABLE_MODIFICATION_UNSPECIFIED"),
  tableModifiedTimestamp("TABLE_MODIFIED_TIMESTAMP");

  const GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem fromValue(String value) {
    for (final item in GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem value: $value');
  }
}
