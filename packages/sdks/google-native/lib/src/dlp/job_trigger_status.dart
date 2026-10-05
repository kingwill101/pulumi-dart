import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. A status for this trigger.
enum JobTriggerStatus implements pulumi.PulumiEnum<String> {
  statusUnspecified("STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  paused("PAUSED"),
  cancelled("CANCELLED");

  const JobTriggerStatus(this.wireValue);
  @override
  final String wireValue;

  static JobTriggerStatus fromValue(String value) {
    for (final item in JobTriggerStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTriggerStatus value: $value');
  }
}
