/// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
enum ServingConfigDiversityTypeRetailV2alpha {
  diversityTypeUnspecified("DIVERSITY_TYPE_UNSPECIFIED"),
  ruleBasedDiversity("RULE_BASED_DIVERSITY"),
  dataDrivenDiversity("DATA_DRIVEN_DIVERSITY");

  const ServingConfigDiversityTypeRetailV2alpha(this.value);
  final String value;

  static ServingConfigDiversityTypeRetailV2alpha fromValue(String value) {
    for (final item in ServingConfigDiversityTypeRetailV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigDiversityTypeRetailV2alpha value: $value');
  }
}

