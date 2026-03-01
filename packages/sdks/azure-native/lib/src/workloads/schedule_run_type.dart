/// Frequency of the schedule operation of this policy.
enum ScheduleRunType {
  valueInvalid("Invalid"),
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueHourly("Hourly");

  const ScheduleRunType(this.value);
  final String value;

  static ScheduleRunType fromValue(String value) {
    for (final item in ScheduleRunType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleRunType value: $value');
  }
}

