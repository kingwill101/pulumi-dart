/// Required. Day of the week for this MaintenanceWindow (in UTC).
enum MaintenanceWindowDayOfWeek {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const MaintenanceWindowDayOfWeek(this.wireValue);
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

