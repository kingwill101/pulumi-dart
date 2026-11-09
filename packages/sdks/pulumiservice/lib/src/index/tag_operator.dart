import 'package:pulumi/pulumi.dart' as pulumi;

enum TagOperator implements pulumi.PulumiEnum<String> {
  equals("equals"),
  notEquals("notEquals"),
  exists("exists"),
  notExists("notExists");

  const TagOperator(this.wireValue);
  @override
  final String wireValue;

  static TagOperator fromValue(String value) {
    for (final item in TagOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TagOperator value: $value');
  }
}
