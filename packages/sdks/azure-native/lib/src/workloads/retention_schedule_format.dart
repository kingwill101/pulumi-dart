import 'package:pulumi/pulumi.dart' as pulumi;

/// Retention schedule format for yearly retention policy.
enum RetentionScheduleFormat implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const RetentionScheduleFormat(this.wireValue);
  @override
  final String wireValue;

  static RetentionScheduleFormat fromValue(String value) {
    for (final item in RetentionScheduleFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetentionScheduleFormat value: $value');
  }
}
