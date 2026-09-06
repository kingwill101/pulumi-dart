import 'package:pulumi/pulumi.dart' as pulumi;

/// The event grouping aggregation kinds
enum EventGroupingAggregationKind implements pulumi.PulumiEnum<String> {
  valueSingleAlert("SingleAlert"),
  valueAlertPerResult("AlertPerResult");

  const EventGroupingAggregationKind(this.wireValue);
  @override
  final String wireValue;

  static EventGroupingAggregationKind fromValue(String value) {
    for (final item in EventGroupingAggregationKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventGroupingAggregationKind value: $value');
  }
}
