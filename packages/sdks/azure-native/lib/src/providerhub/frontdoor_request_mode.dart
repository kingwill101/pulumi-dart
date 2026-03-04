/// The frontdoor request mode.
enum FrontdoorRequestMode {
  notSpecified("NotSpecified"),
  useManifest("UseManifest");

  const FrontdoorRequestMode(this.wireValue);
  final String wireValue;

  static FrontdoorRequestMode fromValue(String value) {
    for (final item in FrontdoorRequestMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontdoorRequestMode value: $value');
  }
}
