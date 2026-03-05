/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum AddressIpVersion {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const AddressIpVersion(this.wireValue);
  final String wireValue;

  static AddressIpVersion fromValue(String value) {
    for (final item in AddressIpVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressIpVersion value: $value');
  }
}

