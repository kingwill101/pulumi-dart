/// Required. The type of this phrase matcher.
enum PhraseMatcherType {
  phraseMatcherTypeUnspecified("PHRASE_MATCHER_TYPE_UNSPECIFIED"),
  allOf("ALL_OF"),
  anyOf("ANY_OF");

  const PhraseMatcherType(this.wireValue);
  final String wireValue;

  static PhraseMatcherType fromValue(String value) {
    for (final item in PhraseMatcherType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PhraseMatcherType value: $value');
  }
}

