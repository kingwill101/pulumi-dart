/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum AddressIpVersionComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const AddressIpVersionComputeBeta(this.wireValue);
  final String wireValue;

  static AddressIpVersionComputeBeta fromValue(String value) {
    for (final item in AddressIpVersionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressIpVersionComputeBeta value: $value');
  }
}

