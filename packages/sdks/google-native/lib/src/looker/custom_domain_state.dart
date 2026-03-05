/// Domain state.
enum CustomDomainState {
  customDomainStateUnspecified("CUSTOM_DOMAIN_STATE_UNSPECIFIED"),
  unverified("UNVERIFIED"),
  verified("VERIFIED"),
  modifying("MODIFYING"),
  available("AVAILABLE"),
  unavailable("UNAVAILABLE"),
  unknown("UNKNOWN");

  const CustomDomainState(this.wireValue);
  final String wireValue;

  static CustomDomainState fromValue(String value) {
    for (final item in CustomDomainState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomDomainState value: $value');
  }
}

