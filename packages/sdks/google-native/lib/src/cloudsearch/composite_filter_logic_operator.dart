import 'package:pulumi/pulumi.dart' as pulumi;

/// The logic operator of the sub filter.
enum CompositeFilterLogicOperator implements pulumi.PulumiEnum<String> {
  and("AND"),
  or("OR"),
  not("NOT");

  const CompositeFilterLogicOperator(this.wireValue);
  @override
  final String wireValue;

  static CompositeFilterLogicOperator fromValue(String value) {
    for (final item in CompositeFilterLogicOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositeFilterLogicOperator value: $value');
  }
}
