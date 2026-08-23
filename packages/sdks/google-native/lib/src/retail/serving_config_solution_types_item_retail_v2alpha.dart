enum ServingConfigSolutionTypesItemRetailV2alpha {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ServingConfigSolutionTypesItemRetailV2alpha(this.wireValue);
  final String wireValue;

  static ServingConfigSolutionTypesItemRetailV2alpha fromValue(String value) {
    for (final item in ServingConfigSolutionTypesItemRetailV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigSolutionTypesItemRetailV2alpha value: $value');
  }
}
