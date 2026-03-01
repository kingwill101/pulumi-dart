/// Day of week to apply the patch on.
enum DayOfWeek {
  valueEveryday("Everyday"),
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const DayOfWeek(this.value);
  final String value;

  static DayOfWeek fromValue(String value) {
    for (final item in DayOfWeek.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DayOfWeek value: $value');
  }
}

