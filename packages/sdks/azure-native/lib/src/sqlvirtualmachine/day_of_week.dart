import 'package:pulumi/pulumi.dart' as pulumi;

/// Day of week to apply the patch on.
enum DayOfWeek implements pulumi.PulumiEnum<String> {
  valueEveryday("Everyday"),
  valueMonday("Monday"),
  valueTuesday("Tuesday"),
  valueWednesday("Wednesday"),
  valueThursday("Thursday"),
  valueFriday("Friday"),
  valueSaturday("Saturday"),
  valueSunday("Sunday");

  const DayOfWeek(this.wireValue);
  @override
  final String wireValue;

  static DayOfWeek fromValue(String value) {
    for (final item in DayOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DayOfWeek value: $value');
  }
}
