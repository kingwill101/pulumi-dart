/// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
enum TargetInstanceNatPolicy {
  noNat("NO_NAT");

  const TargetInstanceNatPolicy(this.wireValue);
  final String wireValue;

  static TargetInstanceNatPolicy fromValue(String value) {
    for (final item in TargetInstanceNatPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetInstanceNatPolicy value: $value');
  }
}

