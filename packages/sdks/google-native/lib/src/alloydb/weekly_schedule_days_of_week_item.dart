import 'package:pulumi/pulumi.dart' as pulumi;

enum WeeklyScheduleDaysOfWeekItem implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItem(this.wireValue);
  @override
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
