import 'package:pulumi/pulumi.dart' as pulumi;

/// Frequency of the schedule operation of this policy.
enum ScheduleRunType implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueHourly("Hourly");

  const ScheduleRunType(this.wireValue);
  @override
  final String wireValue;

  static ScheduleRunType fromValue(String value) {
    for (final item in ScheduleRunType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleRunType value: $value');
  }
}
