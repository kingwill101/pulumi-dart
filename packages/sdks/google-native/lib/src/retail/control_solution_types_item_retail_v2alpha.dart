enum ControlSolutionTypesItemRetailV2alpha {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ControlSolutionTypesItemRetailV2alpha(this.wireValue);
  final String wireValue;

  static ControlSolutionTypesItemRetailV2alpha fromValue(String value) {
    for (final item in ControlSolutionTypesItemRetailV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSolutionTypesItemRetailV2alpha value: $value');
  }
}
