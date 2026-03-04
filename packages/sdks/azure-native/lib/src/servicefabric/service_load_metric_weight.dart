/// The service load metric relative weight, compared to other metrics configured for this service, as a number.
enum ServiceLoadMetricWeight {
  zero("Zero"),
  low("Low"),
  medium("Medium"),
  high("High");

  const ServiceLoadMetricWeight(this.wireValue);
  final String wireValue;

  static ServiceLoadMetricWeight fromValue(String value) {
    for (final item in ServiceLoadMetricWeight.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceLoadMetricWeight value: $value');
  }
}
