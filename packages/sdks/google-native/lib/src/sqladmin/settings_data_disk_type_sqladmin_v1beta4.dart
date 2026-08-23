/// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
enum SettingsDataDiskTypeSqladminV1beta4 {
  sqlDataDiskTypeUnspecified("SQL_DATA_DISK_TYPE_UNSPECIFIED"),
  pdSsd("PD_SSD"),
  pdHdd("PD_HDD"),
  obsoleteLocalSsd("OBSOLETE_LOCAL_SSD");

  const SettingsDataDiskTypeSqladminV1beta4(this.wireValue);
  final String wireValue;

  static SettingsDataDiskTypeSqladminV1beta4 fromValue(String value) {
    for (final item in SettingsDataDiskTypeSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsDataDiskTypeSqladminV1beta4 value: $value');
  }
}
