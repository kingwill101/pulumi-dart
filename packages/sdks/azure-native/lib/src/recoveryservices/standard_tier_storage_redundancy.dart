import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage redundancy setting of a vault
enum StandardTierStorageRedundancy implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueLocallyRedundant("LocallyRedundant"),
  valueGeoRedundant("GeoRedundant"),
  valueZoneRedundant("ZoneRedundant");

  const StandardTierStorageRedundancy(this.wireValue);
  @override
  final String wireValue;

  static StandardTierStorageRedundancy fromValue(String value) {
    for (final item in StandardTierStorageRedundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardTierStorageRedundancy value: $value');
  }
}
