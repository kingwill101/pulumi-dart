import 'package:pulumi/pulumi.dart' as pulumi;

/// The service load metric relative weight, compared to other metrics configured for this service, as a number.
enum ServiceLoadMetricWeight implements pulumi.PulumiEnum<String> {
  valueZero("Zero"),
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const ServiceLoadMetricWeight(this.wireValue);
  @override
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
