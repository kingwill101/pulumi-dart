import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. A day of the week.
enum WeekDayOfMonthDayOfWeek implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeekDayOfMonthDayOfWeek(this.wireValue);
  @override
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
