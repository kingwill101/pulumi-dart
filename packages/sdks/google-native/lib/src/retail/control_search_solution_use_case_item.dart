import 'package:pulumi/pulumi.dart' as pulumi;

enum ControlSearchSolutionUseCaseItem implements pulumi.PulumiEnum<String> {
  searchSolutionUseCaseUnspecified("SEARCH_SOLUTION_USE_CASE_UNSPECIFIED"),
  searchSolutionUseCaseSearch("SEARCH_SOLUTION_USE_CASE_SEARCH"),
  searchSolutionUseCaseBrowse("SEARCH_SOLUTION_USE_CASE_BROWSE");

  const ControlSearchSolutionUseCaseItem(this.wireValue);
  @override
  final String wireValue;

  static ControlSearchSolutionUseCaseItem fromValue(String value) {
    for (final item in ControlSearchSolutionUseCaseItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSearchSolutionUseCaseItem value: $value');
  }
}
