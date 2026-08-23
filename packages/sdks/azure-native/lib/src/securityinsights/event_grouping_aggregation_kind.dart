/// The event grouping aggregation kinds
enum EventGroupingAggregationKind {
  valueSingleAlert("SingleAlert"),
  valueAlertPerResult("AlertPerResult");

  const EventGroupingAggregationKind(this.wireValue);
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
