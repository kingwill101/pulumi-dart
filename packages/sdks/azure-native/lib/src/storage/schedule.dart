/// This is a required field. This field is used to schedule an inventory formation.
enum Schedule {
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const Schedule(this.wireValue);
  final String wireValue;

  static Schedule fromValue(String value) {
    for (final item in Schedule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Schedule value: $value');
  }
}
