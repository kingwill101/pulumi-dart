/// The storage redundancy setting of a vault
enum StandardTierStorageRedundancy {
  valueInvalid("Invalid"),
  valueLocallyRedundant("LocallyRedundant"),
  valueGeoRedundant("GeoRedundant"),
  valueZoneRedundant("ZoneRedundant");

  const StandardTierStorageRedundancy(this.value);
  final String value;

  static StandardTierStorageRedundancy fromValue(String value) {
    for (final item in StandardTierStorageRedundancy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardTierStorageRedundancy value: $value');
  }
}

