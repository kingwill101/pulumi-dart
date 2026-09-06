import 'package:pulumi/pulumi.dart' as pulumi;

/// Day of the week to run assessment.
enum AssessmentDayOfWeek implements pulumi.PulumiEnum<String> {
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const AssessmentDayOfWeek(this.wireValue);
  @override
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
