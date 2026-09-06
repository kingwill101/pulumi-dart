import 'package:pulumi/pulumi.dart' as pulumi;

/// When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
enum OwaspCrsExclusionEntrySelectorMatchOperator implements pulumi.PulumiEnum<String> {
  valueEquals("Equals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith"),
  valueEqualsAny("EqualsAny");

  const OwaspCrsExclusionEntrySelectorMatchOperator(this.wireValue);
  @override
  final String wireValue;

  static OwaspCrsExclusionEntrySelectorMatchOperator fromValue(String value) {
    for (final item in OwaspCrsExclusionEntrySelectorMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwaspCrsExclusionEntrySelectorMatchOperator value: $value');
  }
}
