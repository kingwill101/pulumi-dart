/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum GlobalAddressIpVersionComputeBeta {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalAddressIpVersionComputeBeta(this.wireValue);
  final String wireValue;

  static GlobalAddressIpVersionComputeBeta fromValue(String value) {
    for (final item in GlobalAddressIpVersionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpVersionComputeBeta value: $value');
  }
}

