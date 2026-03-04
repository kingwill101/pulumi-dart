enum SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta(
    this.wireValue,
  );
  final String wireValue;

  static SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta value: $value',
    );
  }
}
