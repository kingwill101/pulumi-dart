/// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
enum SettingsReplicationTypeSqladminV1beta4 {
  sqlReplicationTypeUnspecified("SQL_REPLICATION_TYPE_UNSPECIFIED"),
  synchronous("SYNCHRONOUS"),
  asynchronous("ASYNCHRONOUS");

  const SettingsReplicationTypeSqladminV1beta4(this.wireValue);
  final String wireValue;

  static SettingsReplicationTypeSqladminV1beta4 fromValue(String value) {
    for (final item in SettingsReplicationTypeSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SettingsReplicationTypeSqladminV1beta4 value: $value',
    );
  }
}
