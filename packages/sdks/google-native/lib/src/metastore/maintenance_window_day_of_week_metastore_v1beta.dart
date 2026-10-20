import 'package:pulumi/pulumi.dart' as pulumi;

/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeekMetastoreV1beta implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeekMetastoreV1beta(this.wireValue);
  @override
  final String wireValue;

  static MaintenanceWindowDayOfWeekMetastoreV1beta fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeekMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowDayOfWeekMetastoreV1beta value: $value');
  }
}
