import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of this phrase matcher.
enum PhraseMatcherType implements pulumi.PulumiEnum<String> {
  phraseMatcherTypeUnspecified("PHRASE_MATCHER_TYPE_UNSPECIFIED"),
  allOf("ALL_OF"),
  anyOf("ANY_OF");

  const PhraseMatcherType(this.wireValue);
  @override
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
