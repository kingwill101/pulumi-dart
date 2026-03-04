/// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
enum ServingConfigDiversityType {
  diversityTypeUnspecified("DIVERSITY_TYPE_UNSPECIFIED"),
  ruleBasedDiversity("RULE_BASED_DIVERSITY"),
  dataDrivenDiversity("DATA_DRIVEN_DIVERSITY");

  const ServingConfigDiversityType(this.wireValue);
  final String wireValue;

  static ServingConfigDiversityType fromValue(String value) {
    for (final item in ServingConfigDiversityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigDiversityType value: $value');
  }
}
