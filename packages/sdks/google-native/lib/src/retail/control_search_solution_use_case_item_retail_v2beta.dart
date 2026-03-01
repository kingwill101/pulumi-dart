enum ControlSearchSolutionUseCaseItemRetailV2beta {
  searchSolutionUseCaseUnspecified("SEARCH_SOLUTION_USE_CASE_UNSPECIFIED"),
  searchSolutionUseCaseSearch("SEARCH_SOLUTION_USE_CASE_SEARCH"),
  searchSolutionUseCaseBrowse("SEARCH_SOLUTION_USE_CASE_BROWSE");

  const ControlSearchSolutionUseCaseItemRetailV2beta(this.value);
  final String value;

  static ControlSearchSolutionUseCaseItemRetailV2beta fromValue(String value) {
    for (final item in ControlSearchSolutionUseCaseItemRetailV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSearchSolutionUseCaseItemRetailV2beta value: $value');
  }
}

