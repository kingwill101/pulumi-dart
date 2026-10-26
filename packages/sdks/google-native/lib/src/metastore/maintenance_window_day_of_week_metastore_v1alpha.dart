import 'package:pulumi/pulumi.dart' as pulumi;

/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeekMetastoreV1alpha implements pulumi.PulumiEnum<String> {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeekMetastoreV1alpha(this.wireValue);
  @override
  final String wireValue;

  static MaintenanceWindowDayOfWeekMetastoreV1alpha fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeekMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceWindowDayOfWeekMetastoreV1alpha value: $value');
  }
}
