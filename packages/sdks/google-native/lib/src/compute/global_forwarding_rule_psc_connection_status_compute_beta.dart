enum GlobalForwardingRulePscConnectionStatusComputeBeta {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatusComputeBeta(this.wireValue);
  final String wireValue;

  static GlobalForwardingRulePscConnectionStatusComputeBeta fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatusComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRulePscConnectionStatusComputeBeta value: $value');
  }
}
