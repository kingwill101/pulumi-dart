/// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
enum TargetInstanceNatPolicyComputeBeta {
  noNat("NO_NAT");

  const TargetInstanceNatPolicyComputeBeta(this.wireValue);
  final String wireValue;

  static TargetInstanceNatPolicyComputeBeta fromValue(String value) {
    for (final item in TargetInstanceNatPolicyComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetInstanceNatPolicyComputeBeta value: $value');
  }
}
