/// The frontdoor request mode.
enum FrontdoorRequestMode {
  notSpecified("NotSpecified"),
  useManifest("UseManifest");

  const FrontdoorRequestMode(this.value);
  final String value;

  static FrontdoorRequestMode fromValue(String value) {
    for (final item in FrontdoorRequestMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontdoorRequestMode value: $value');
  }
}

