import 'package:pulumi/pulumi.dart' as pulumi;

/// The endpoint type of this address, which should be VM or NETLB. This is used for deciding which type of endpoint this address can be used after the external IPv6 address reservation.
enum GlobalAddressIpv6EndpointTypeComputeV1 implements pulumi.PulumiEnum<String> {
  netlb("NETLB"),
  vm("VM");

  const GlobalAddressIpv6EndpointTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static GlobalAddressIpv6EndpointTypeComputeV1 fromValue(String value) {
    for (final item in GlobalAddressIpv6EndpointTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressIpv6EndpointTypeComputeV1 value: $value');
  }
}
