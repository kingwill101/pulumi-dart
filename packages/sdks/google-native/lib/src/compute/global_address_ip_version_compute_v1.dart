/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum GlobalAddressIpVersionComputeV1 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const GlobalAddressIpVersionComputeV1(this.wireValue);
  final String wireValue;

  static GlobalAddressIpVersionComputeV1 fromValue(String value) {
    for (final item in GlobalAddressIpVersionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpVersionComputeV1 value: $value');
  }
}
