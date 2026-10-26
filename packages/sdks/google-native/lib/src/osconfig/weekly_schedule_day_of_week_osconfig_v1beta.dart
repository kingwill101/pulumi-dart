import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Day of the week.
enum WeeklyScheduleDayOfWeekOsconfigV1beta implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDayOfWeekOsconfigV1beta(this.wireValue);
  @override
  final String wireValue;

  static WeeklyScheduleDayOfWeekOsconfigV1beta fromValue(String value) {
    for (final item in WeeklyScheduleDayOfWeekOsconfigV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDayOfWeekOsconfigV1beta value: $value');
  }
}
