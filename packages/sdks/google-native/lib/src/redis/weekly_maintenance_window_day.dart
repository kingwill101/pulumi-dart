/// Required. The day of week that maintenance updates occur.
enum WeeklyMaintenanceWindowDay {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const WeeklyMaintenanceWindowDay(this.wireValue);
  final String wireValue;

  static WeeklyMaintenanceWindowDay fromValue(String value) {
    for (final item in WeeklyMaintenanceWindowDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WeeklyMaintenanceWindowDay value: $value');
  }
}
