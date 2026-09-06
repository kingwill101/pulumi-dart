import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter type that is evaluated against a BrokeredMessage.
enum FilterType implements pulumi.PulumiEnum<String> {
  valueSqlFilter("SqlFilter"),
  valueCorrelationFilter("CorrelationFilter");

  const FilterType(this.wireValue);
  @override
  final String wireValue;

  static FilterType fromValue(String value) {
    for (final item in FilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterType value: $value');
  }
}
