/// Required. A day of the week.
enum WeekDayOfMonthDayOfWeek {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeekDayOfMonthDayOfWeek(this.wireValue);
  final String wireValue;

  static WeekDayOfMonthDayOfWeek fromValue(String value) {
    for (final item in WeekDayOfMonthDayOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekDayOfMonthDayOfWeek value: $value');
  }
}

