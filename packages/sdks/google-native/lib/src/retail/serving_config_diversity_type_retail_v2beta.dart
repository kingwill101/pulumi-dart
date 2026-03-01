/// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
enum ServingConfigDiversityTypeRetailV2beta {
  diversityTypeUnspecified("DIVERSITY_TYPE_UNSPECIFIED"),
  ruleBasedDiversity("RULE_BASED_DIVERSITY"),
  dataDrivenDiversity("DATA_DRIVEN_DIVERSITY");

  const ServingConfigDiversityTypeRetailV2beta(this.value);
  final String value;

  static ServingConfigDiversityTypeRetailV2beta fromValue(String value) {
    for (final item in ServingConfigDiversityTypeRetailV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigDiversityTypeRetailV2beta value: $value');
  }
}

