import 'package:pulumi/pulumi.dart' as pulumi;

/// A valid comparer operator to use. A case-insensitive comparison will be applied for String PropertyType.
enum Operator implements pulumi.PulumiEnum<String> {
  equals("Equals"),
  greaterThan("GreaterThan"),
  greaterThanOrEqualTo("GreaterThanOrEqualTo"),
  lesserThan("LesserThan"),
  lesserThanOrEqualTo("LesserThanOrEqualTo"),
  notEquals("NotEquals"),
  contains("Contains"),
  startsWith("StartsWith"),
  endsWith("EndsWith");

  const Operator(this.wireValue);
  @override
  final String wireValue;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}
