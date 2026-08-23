/// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
enum SettingsDataDiskType {
  sqlDataDiskTypeUnspecified("SQL_DATA_DISK_TYPE_UNSPECIFIED"),
  pdSsd("PD_SSD"),
  pdHdd("PD_HDD"),
  obsoleteLocalSsd("OBSOLETE_LOCAL_SSD");

  const SettingsDataDiskType(this.wireValue);
  final String wireValue;

  static SettingsDataDiskType fromValue(String value) {
    for (final item in SettingsDataDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsDataDiskType value: $value');
  }
}
