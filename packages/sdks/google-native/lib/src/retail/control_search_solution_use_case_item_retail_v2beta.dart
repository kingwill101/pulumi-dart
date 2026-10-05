import 'package:pulumi/pulumi.dart' as pulumi;

enum ControlSearchSolutionUseCaseItemRetailV2beta implements pulumi.PulumiEnum<String> {
  searchSolutionUseCaseUnspecified("SEARCH_SOLUTION_USE_CASE_UNSPECIFIED"),
  searchSolutionUseCaseSearch("SEARCH_SOLUTION_USE_CASE_SEARCH"),
  searchSolutionUseCaseBrowse("SEARCH_SOLUTION_USE_CASE_BROWSE");

  const ControlSearchSolutionUseCaseItemRetailV2beta(this.wireValue);
  @override
  final String wireValue;

  static ControlSearchSolutionUseCaseItemRetailV2beta fromValue(String value) {
    for (final item in ControlSearchSolutionUseCaseItemRetailV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ControlSearchSolutionUseCaseItemRetailV2beta value: $value');
  }
}
