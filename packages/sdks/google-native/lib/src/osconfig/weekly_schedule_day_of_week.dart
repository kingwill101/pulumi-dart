import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Day of the week.
enum WeeklyScheduleDayOfWeek implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDayOfWeek(this.wireValue);
  @override
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
