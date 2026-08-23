/// Required. A day of the week.
enum WeekDayOfMonthDayOfWeekOsconfigV1beta {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeekDayOfMonthDayOfWeekOsconfigV1beta(this.wireValue);
  final String wireValue;

  static WeekDayOfMonthDayOfWeekOsconfigV1beta fromValue(String value) {
    for (final item in WeekDayOfMonthDayOfWeekOsconfigV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeekDayOfMonthDayOfWeekOsconfigV1beta value: $value');
  }
}
