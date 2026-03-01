/// Optional: Specifies how availability zones are allocated to the Redis cache. 'Automatic' enables zone redundancy and Azure will automatically select zones based on regional availability and capacity. 'UserDefined' will select availability zones passed in by you using the 'zones' parameter. 'NoZones' will produce a non-zonal cache. If 'zonalAllocationPolicy' is not passed, it will be set to 'UserDefined' when zones are passed in, otherwise, it will be set to 'Automatic' in regions where zones are supported and 'NoZones' in regions where zones are not supported.
enum ZonalAllocationPolicy {
  automatic("Automatic"),
  userDefined("UserDefined"),
  noZones("NoZones");

  const ZonalAllocationPolicy(this.value);
  final String value;

  static ZonalAllocationPolicy fromValue(String value) {
    for (final item in ZonalAllocationPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZonalAllocationPolicy value: $value');
  }
}

