/// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
enum AddressIpv6EndpointType {
  netlb("NETLB"),
  vm("VM");

  const AddressIpv6EndpointType(this.wireValue);
  final String wireValue;

  static AddressIpv6EndpointType fromValue(String value) {
    for (final item in AddressIpv6EndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressIpv6EndpointType value: $value');
  }
}

