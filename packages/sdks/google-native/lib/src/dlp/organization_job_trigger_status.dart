import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. A status for this trigger.
enum OrganizationJobTriggerStatus implements pulumi.PulumiEnum<String> {
  statusUnspecified("STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  paused("PAUSED"),
  cancelled("CANCELLED");

  const OrganizationJobTriggerStatus(this.wireValue);
  @override
  final String wireValue;

  static OrganizationJobTriggerStatus fromValue(String value) {
    for (final item in OrganizationJobTriggerStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationJobTriggerStatus value: $value');
  }
}
