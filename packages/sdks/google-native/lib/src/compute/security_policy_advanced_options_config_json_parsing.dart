enum SecurityPolicyAdvancedOptionsConfigJsonParsing {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsing(this.wireValue);
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigJsonParsing fromValue(
    String value,
  ) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsing.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyAdvancedOptionsConfigJsonParsing value: $value',
    );
  }
}
