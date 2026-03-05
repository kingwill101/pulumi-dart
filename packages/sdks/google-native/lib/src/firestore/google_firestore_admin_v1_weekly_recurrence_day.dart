/// The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
enum GoogleFirestoreAdminV1WeeklyRecurrenceDay {
  dayOfWeekUnspecified("DAY_OF_WEEK_UNSPECIFIED"),
  monday("MONDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY"),
  thursday("THURSDAY"),
  friday("FRIDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY");

  const GoogleFirestoreAdminV1WeeklyRecurrenceDay(this.wireValue);
  final String wireValue;

  static GoogleFirestoreAdminV1WeeklyRecurrenceDay fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1WeeklyRecurrenceDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleFirestoreAdminV1WeeklyRecurrenceDay value: $value');
  }
}

