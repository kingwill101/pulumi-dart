/// Specifies whether DNSSEC is enabled, and what mode it is in.
enum ManagedZoneDnsSecConfigStateDnsV1beta2 {
  off("off"),
  on("on"),
  transfer("transfer");

  const ManagedZoneDnsSecConfigStateDnsV1beta2(this.wireValue);
  final String wireValue;

  static ManagedZoneDnsSecConfigStateDnsV1beta2 fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigStateDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneDnsSecConfigStateDnsV1beta2 value: $value');
  }
}
