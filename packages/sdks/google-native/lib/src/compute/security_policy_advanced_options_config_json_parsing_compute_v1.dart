enum SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1 {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1(this.wireValue);
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1 value: $value');
  }
}
