import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The day of week that maintenance updates occur.
enum WeeklyMaintenanceWindowDayRedisV1beta1 implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDayRedisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static WeeklyMaintenanceWindowDayRedisV1beta1 fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDayRedisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyMaintenanceWindowDayRedisV1beta1 value: $value');
  }
}
