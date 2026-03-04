enum WeeklyScheduleDaysOfWeekItem {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItem(this.wireValue);
  final String wireValue;

  static WeeklyScheduleDaysOfWeekItem fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDaysOfWeekItem value: $value');
  }
}
