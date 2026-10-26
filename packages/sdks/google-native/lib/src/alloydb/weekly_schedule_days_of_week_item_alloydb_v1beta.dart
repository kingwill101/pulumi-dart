import 'package:pulumi/pulumi.dart' as pulumi;

enum WeeklyScheduleDaysOfWeekItemAlloydbV1beta implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItemAlloydbV1beta(this.wireValue);
  @override
  final String wireValue;

  static WeeklyScheduleDaysOfWeekItemAlloydbV1beta fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItemAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDaysOfWeekItemAlloydbV1beta value: $value');
  }
}
