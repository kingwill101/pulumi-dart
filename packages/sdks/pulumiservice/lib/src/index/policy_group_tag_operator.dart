import 'package:pulumi/pulumi.dart' as pulumi;

enum PolicyGroupTagOperator implements pulumi.PulumiEnum<String> {
  equals("equals"),
  notEquals("notEquals"),
  exists("exists"),
  notExists("notExists");

  const PolicyGroupTagOperator(this.wireValue);
  @override
  final String wireValue;

  static PolicyGroupTagOperator fromValue(String value) {
    for (final item in PolicyGroupTagOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyGroupTagOperator value: $value');
  }
}
