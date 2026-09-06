import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the resource.
enum AutoScalingResourceMetricName implements pulumi.PulumiEnum<String> {
  valueCpu("cpu"),
  valueMemoryInGB("memoryInGB");

  const AutoScalingResourceMetricName(this.wireValue);
  @override
  final String wireValue;

  static AutoScalingResourceMetricName fromValue(String value) {
    for (final item in AutoScalingResourceMetricName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingResourceMetricName value: $value');
  }
}
