/// Describes what response the data plane API of a search service would send for requests that failed authentication.
enum AadAuthFailureMode {
  http403("http403"),
  http401WithBearerChallenge("http401WithBearerChallenge");

  const AadAuthFailureMode(this.wireValue);
  final String wireValue;

  static AadAuthFailureMode fromValue(String value) {
    for (final item in AadAuthFailureMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AadAuthFailureMode value: $value');
  }
}

