/// The throttling metric type
enum ThrottlingMetricType {
  notSpecified("NotSpecified"),
  numberOfRequests("NumberOfRequests"),
  numberOfResources("NumberOfResources");

  const ThrottlingMetricType(this.wireValue);
  final String wireValue;

  static ThrottlingMetricType fromValue(String value) {
    for (final item in ThrottlingMetricType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThrottlingMetricType value: $value');
  }
}

