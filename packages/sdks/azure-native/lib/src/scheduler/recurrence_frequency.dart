import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
enum RecurrenceFrequency implements pulumi.PulumiEnum<String> {
  valueMinute("Minute"),
  valueHour("Hour"),
  valueDay("Day"),
  valueWeek("Week"),
  valueMonth("Month");

  const RecurrenceFrequency(this.wireValue);
  @override
  final String wireValue;

  static RecurrenceFrequency fromValue(String value) {
    for (final item in RecurrenceFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecurrenceFrequency value: $value');
  }
}
