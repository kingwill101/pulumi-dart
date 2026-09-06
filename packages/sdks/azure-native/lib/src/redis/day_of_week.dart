import 'package:pulumi/pulumi.dart' as pulumi;

/// Day of the week when a cache can be patched.
enum DayOfWeek implements pulumi.PulumiEnum<String> {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday"),
  everyday("Everyday"),
  weekend("Weekend");

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
