/// Optional. The edition of the instance.
enum SettingsEdition {
  editionUnspecified("EDITION_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const SettingsEdition(this.wireValue);
  final String wireValue;

  static SettingsEdition fromValue(String value) {
    for (final item in SettingsEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsEdition value: $value');
  }
}
