/// The IP version that will be used by this address. Valid options are IPV4 or IPV6.
enum AddressIpVersionComputeV1 {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const AddressIpVersionComputeV1(this.wireValue);
  final String wireValue;

  static AddressIpVersionComputeV1 fromValue(String value) {
    for (final item in AddressIpVersionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressIpVersionComputeV1 value: $value');
  }
}

