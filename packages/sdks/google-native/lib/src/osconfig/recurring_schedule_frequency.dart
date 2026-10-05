import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The frequency unit of this recurring schedule.
enum RecurringScheduleFrequency implements pulumi.PulumiEnum<String> {
  frequencyUnspecified("FREQUENCY_UNSPECIFIED"),
  weekly("WEEKLY"),
  monthly("MONTHLY"),
  daily("DAILY");

  const RecurringScheduleFrequency(this.wireValue);
  @override
  final String wireValue;

  static RecurringScheduleFrequency fromValue(String value) {
    for (final item in RecurringScheduleFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurringScheduleFrequency value: $value');
  }
}
