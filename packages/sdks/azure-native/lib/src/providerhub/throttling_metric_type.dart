import 'package:pulumi/pulumi.dart' as pulumi;

/// The throttling metric type
enum ThrottlingMetricType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  numberOfRequests("NumberOfRequests"),
  numberOfResources("NumberOfResources");

  const ThrottlingMetricType(this.wireValue);
  @override
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
