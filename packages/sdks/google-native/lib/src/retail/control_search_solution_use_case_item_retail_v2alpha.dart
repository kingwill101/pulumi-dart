enum ControlSearchSolutionUseCaseItemRetailV2alpha {
  searchSolutionUseCaseUnspecified("SEARCH_SOLUTION_USE_CASE_UNSPECIFIED"),
  searchSolutionUseCaseSearch("SEARCH_SOLUTION_USE_CASE_SEARCH"),
  searchSolutionUseCaseBrowse("SEARCH_SOLUTION_USE_CASE_BROWSE");

  const ControlSearchSolutionUseCaseItemRetailV2alpha(this.wireValue);
  final String wireValue;

  static ControlSearchSolutionUseCaseItemRetailV2alpha fromValue(String value) {
    for (final item in ControlSearchSolutionUseCaseItemRetailV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSearchSolutionUseCaseItemRetailV2alpha value: $value');
  }
}
