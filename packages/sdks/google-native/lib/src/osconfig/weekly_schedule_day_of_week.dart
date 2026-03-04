/// Required. Day of the week.
enum WeeklyScheduleDayOfWeek {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDayOfWeek(this.wireValue);
  final String wireValue;

  static WeeklyScheduleDayOfWeek fromValue(String value) {
    for (final item in WeeklyScheduleDayOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDayOfWeek value: $value');
  }
}
