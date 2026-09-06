import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of auto scaling trigger
enum AutoScalingTriggerKind implements pulumi.PulumiEnum<String> {
  valueAverageLoad("AverageLoad");

  const AutoScalingTriggerKind(this.wireValue);
  @override
  final String wireValue;

  static AutoScalingTriggerKind fromValue(String value) {
    for (final item in AutoScalingTriggerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingTriggerKind value: $value');
  }
}
