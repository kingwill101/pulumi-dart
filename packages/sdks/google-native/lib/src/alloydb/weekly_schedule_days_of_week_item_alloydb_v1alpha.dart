import 'package:pulumi/pulumi.dart' as pulumi;

enum WeeklyScheduleDaysOfWeekItemAlloydbV1alpha implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyScheduleDaysOfWeekItemAlloydbV1alpha(this.wireValue);
  @override
  final String wireValue;

  static WeeklyScheduleDaysOfWeekItemAlloydbV1alpha fromValue(String value) {
    for (final item in WeeklyScheduleDaysOfWeekItemAlloydbV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyScheduleDaysOfWeekItemAlloydbV1alpha value: $value');
  }
}
