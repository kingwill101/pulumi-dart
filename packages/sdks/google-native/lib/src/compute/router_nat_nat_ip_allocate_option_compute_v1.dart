import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
enum RouterNatNatIpAllocateOptionComputeV1 implements pulumi.PulumiEnum<String> {
  autoOnly("AUTO_ONLY"),
  manualOnly("MANUAL_ONLY");

  const RouterNatNatIpAllocateOptionComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterNatNatIpAllocateOptionComputeV1 fromValue(String value) {
    for (final item in RouterNatNatIpAllocateOptionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatNatIpAllocateOptionComputeV1 value: $value');
  }
}
