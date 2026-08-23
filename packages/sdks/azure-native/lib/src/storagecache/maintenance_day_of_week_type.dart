/// Day of the week on which the maintenance window will occur.
enum MaintenanceDayOfWeekType {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const MaintenanceDayOfWeekType(this.wireValue);
  final String wireValue;

  static MaintenanceDayOfWeekType fromValue(String value) {
    for (final item in MaintenanceDayOfWeekType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceDayOfWeekType value: $value');
  }
}
