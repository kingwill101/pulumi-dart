import 'package:pulumi/pulumi.dart' as pulumi;

enum ServingConfigSolutionTypesItem implements pulumi.PulumiEnum<String> {
  solutionTypeUnspecified("SOLUTION_TYPE_UNSPECIFIED"),
  solutionTypeRecommendation("SOLUTION_TYPE_RECOMMENDATION"),
  solutionTypeSearch("SOLUTION_TYPE_SEARCH");

  const ServingConfigSolutionTypesItem(this.wireValue);
  @override
  final String wireValue;

  static ServingConfigSolutionTypesItem fromValue(String value) {
    for (final item in ServingConfigSolutionTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigSolutionTypesItem value: $value');
  }
}
