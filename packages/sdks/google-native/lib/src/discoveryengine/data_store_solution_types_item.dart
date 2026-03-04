enum DataStoreSolutionTypesItem {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH"),
  solutionTypeChat("SOLUTION_TYPE_CHAT");

  const DataStoreSolutionTypesItem(this.wireValue);
  final String wireValue;

  static DataStoreSolutionTypesItem fromValue(String value) {
    for (final item in DataStoreSolutionTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStoreSolutionTypesItem value: $value');
  }
}
