/// Required. The type of this phrase match rule group.
enum GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupType {
  phraseMatchRuleGroupTypeUnspecified(
    "PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED",
  ),
  allOf("ALL_OF"),
  anyOf("ANY_OF");

  const GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupType(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupType value: $value',
    );
  }
}
