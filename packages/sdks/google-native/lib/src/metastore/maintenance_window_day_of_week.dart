import 'package:pulumi/pulumi.dart' as pulumi;

/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeek implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeek(this.wireValue);
  @override
  final String wireValue;

  static MaintenanceWindowDayOfWeek fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowDayOfWeek value: $value');
  }
}
