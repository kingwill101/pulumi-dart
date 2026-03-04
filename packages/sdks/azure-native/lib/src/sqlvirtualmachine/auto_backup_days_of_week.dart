enum AutoBackupDaysOfWeek {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const AutoBackupDaysOfWeek(this.wireValue);
  final String wireValue;

  static AutoBackupDaysOfWeek fromValue(String value) {
    for (final item in AutoBackupDaysOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoBackupDaysOfWeek value: $value');
  }
}
