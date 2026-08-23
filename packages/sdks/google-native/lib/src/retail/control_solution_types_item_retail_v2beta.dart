enum ControlSolutionTypesItemRetailV2beta {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ControlSolutionTypesItemRetailV2beta(this.wireValue);
  final String wireValue;

  static ControlSolutionTypesItemRetailV2beta fromValue(String value) {
    for (final item in ControlSolutionTypesItemRetailV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSolutionTypesItemRetailV2beta value: $value');
  }
}
