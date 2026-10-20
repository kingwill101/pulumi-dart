import 'package:pulumi/pulumi.dart' as pulumi;

enum DataStoreSolutionTypesItem implements pulumi.PulumiEnum<String> {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH"),
  solutionTypeChat("SOLUTION_TYPE_CHAT");

  const DataStoreSolutionTypesItem(this.wireValue);
  @override
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
