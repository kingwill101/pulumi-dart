/// The storage account type to be used to store backups for this instance. The options are Local (LocallyRedundantStorage), Zone (ZoneRedundantStorage), Geo (GeoRedundantStorage) and GeoZone(GeoZoneRedundantStorage)
enum BackupStorageRedundancy {
  valueGeo("Geo"),
  valueLocal("Local"),
  valueZone("Zone"),
  valueGeoZone("GeoZone");

  const BackupStorageRedundancy(this.wireValue);
  final String wireValue;

  static BackupStorageRedundancy fromValue(String value) {
    for (final item in BackupStorageRedundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupStorageRedundancy value: $value');
  }
}
