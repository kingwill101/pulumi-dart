/// Required. Indicates the current state of this Consent.
enum ConsentStateHealthcareV1beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  archived("ARCHIVED"),
  revoked("REVOKED"),
  draft("DRAFT"),
  rejected("REJECTED");

  const ConsentStateHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static ConsentStateHealthcareV1beta1 fromValue(String value) {
    for (final item in ConsentStateHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsentStateHealthcareV1beta1 value: $value');
  }
}
