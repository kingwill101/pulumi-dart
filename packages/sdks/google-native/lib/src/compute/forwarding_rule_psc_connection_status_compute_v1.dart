enum ForwardingRulePscConnectionStatusComputeV1 {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const ForwardingRulePscConnectionStatusComputeV1(this.wireValue);
  final String wireValue;

  static ForwardingRulePscConnectionStatusComputeV1 fromValue(String value) {
    for (final item in ForwardingRulePscConnectionStatusComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRulePscConnectionStatusComputeV1 value: $value');
  }
}
