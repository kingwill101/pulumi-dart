/// Required. Indicates the current state of this Consent.
enum ConsentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  archived("ARCHIVED"),
  revoked("REVOKED"),
  draft("DRAFT"),
  rejected("REJECTED");

  const ConsentState(this.wireValue);
  final String wireValue;

  static ConsentState fromValue(String value) {
    for (final item in ConsentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentState value: $value');
  }
}
