/// The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
enum IpMappingTypeSqladminV1beta4 {
  sqlIpAddressTypeUnspecified("SQL_IP_ADDRESS_TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  outgoing("OUTGOING"),
  private("PRIVATE"),
  migrated1stGen("MIGRATED_1ST_GEN");

  const IpMappingTypeSqladminV1beta4(this.value);
  final String value;

  static IpMappingTypeSqladminV1beta4 fromValue(String value) {
    for (final item in IpMappingTypeSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpMappingTypeSqladminV1beta4 value: $value');
  }
}

