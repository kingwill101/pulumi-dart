/// Specifies whether DNSSEC is enabled, and what mode it is in.
enum ManagedZoneDnsSecConfigState {
  off("off"),
  on("on"),
  transfer("transfer");

  const ManagedZoneDnsSecConfigState(this.wireValue);
  final String wireValue;

  static ManagedZoneDnsSecConfigState fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneDnsSecConfigState value: $value');
  }
}
