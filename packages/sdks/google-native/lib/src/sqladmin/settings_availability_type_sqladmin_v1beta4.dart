/// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
enum SettingsAvailabilityTypeSqladminV1beta4 {
  sqlAvailabilityTypeUnspecified("SQL_AVAILABILITY_TYPE_UNSPECIFIED"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const SettingsAvailabilityTypeSqladminV1beta4(this.wireValue);
  final String wireValue;

  static SettingsAvailabilityTypeSqladminV1beta4 fromValue(String value) {
    for (final item in SettingsAvailabilityTypeSqladminV1beta4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsAvailabilityTypeSqladminV1beta4 value: $value');
  }
}
