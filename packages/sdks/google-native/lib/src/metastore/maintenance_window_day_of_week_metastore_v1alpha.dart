/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeekMetastoreV1alpha {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeekMetastoreV1alpha(this.wireValue);
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
