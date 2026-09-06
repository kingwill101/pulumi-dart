import 'package:pulumi/pulumi.dart' as pulumi;

/// Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
enum MatchingMethod implements pulumi.PulumiEnum<String> {
  valueAllEntities("AllEntities"),
  valueAnyAlert("AnyAlert"),
  valueSelected("Selected");

  const MatchingMethod(this.wireValue);
  @override
  final String wireValue;

  static MatchingMethod fromValue(String value) {
    for (final item in MatchingMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchingMethod value: $value');
  }
}
