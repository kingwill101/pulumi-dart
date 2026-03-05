/// The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.
enum IpMappingType {
  sqlIpAddressTypeUnspecified("SQL_IP_ADDRESS_TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  outgoing("OUTGOING"),
  private("PRIVATE"),
  migrated1stGen("MIGRATED_1ST_GEN");

  const IpMappingType(this.wireValue);
  final String wireValue;

  static IpMappingType fromValue(String value) {
    for (final item in IpMappingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpMappingType value: $value');
  }
}

