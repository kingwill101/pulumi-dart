enum GlobalForwardingRulePscConnectionStatusComputeV1 {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatusComputeV1(this.wireValue);
  final String wireValue;

  static GlobalForwardingRulePscConnectionStatusComputeV1 fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatusComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRulePscConnectionStatusComputeV1 value: $value');
  }
}

