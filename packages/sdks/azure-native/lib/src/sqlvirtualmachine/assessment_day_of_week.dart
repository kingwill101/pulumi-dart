/// Day of the week to run assessment.
enum AssessmentDayOfWeek {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const AssessmentDayOfWeek(this.wireValue);
  final String wireValue;

  static AssessmentDayOfWeek fromValue(String value) {
    for (final item in AssessmentDayOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentDayOfWeek value: $value');
  }
}

