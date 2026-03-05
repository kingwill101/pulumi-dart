/// Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data availability. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available).
enum CloudSqlSettingsAvailabilityType {
  sqlAvailabilityTypeUnspecified("SQL_AVAILABILITY_TYPE_UNSPECIFIED"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const CloudSqlSettingsAvailabilityType(this.wireValue);
  final String wireValue;

  static CloudSqlSettingsAvailabilityType fromValue(String value) {
    for (final item in CloudSqlSettingsAvailabilityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsAvailabilityType value: $value');
  }
}

