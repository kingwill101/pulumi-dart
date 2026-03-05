enum ServingConfigSolutionTypesItemRetailV2beta {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ServingConfigSolutionTypesItemRetailV2beta(this.wireValue);
  final String wireValue;

  static ServingConfigSolutionTypesItemRetailV2beta fromValue(String value) {
    for (final item in ServingConfigSolutionTypesItemRetailV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigSolutionTypesItemRetailV2beta value: $value');
  }
}

