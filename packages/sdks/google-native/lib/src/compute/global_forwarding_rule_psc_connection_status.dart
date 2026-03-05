enum GlobalForwardingRulePscConnectionStatus {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatus(this.wireValue);
  final String wireValue;

  static GlobalForwardingRulePscConnectionStatus fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRulePscConnectionStatus value: $value');
  }
}

