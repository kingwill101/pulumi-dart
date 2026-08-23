/// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
enum GlobalAddressIpv6EndpointTypeComputeBeta {
  netlb("NETLB"),
  vm("VM");

  const GlobalAddressIpv6EndpointTypeComputeBeta(this.wireValue);
  final String wireValue;

  static GlobalAddressIpv6EndpointTypeComputeBeta fromValue(String value) {
    for (final item in GlobalAddressIpv6EndpointTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpv6EndpointTypeComputeBeta value: $value');
  }
}
