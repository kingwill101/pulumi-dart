/// The day of week, when the window starts.
enum MaintenanceWindowDayOfWeekMetastoreV1beta {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeekMetastoreV1beta(this.wireValue);
  final String wireValue;

  static MaintenanceWindowDayOfWeekMetastoreV1beta fromValue(String value) {
    for (final item in MaintenanceWindowDayOfWeekMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MaintenanceWindowDayOfWeekMetastoreV1beta value: $value',
    );
  }
}
