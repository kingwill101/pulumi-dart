import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
enum ResourcePolicyWeeklyCycleDayOfWeekDay implements pulumi.PulumiEnum<String> {
  friday("FRIDAY"),
  invalid("INVALID"),
  monday("MONDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY"),
  thursday("THURSDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY");

  const ResourcePolicyWeeklyCycleDayOfWeekDay(this.wireValue);
  @override
  final String wireValue;

  static ResourcePolicyWeeklyCycleDayOfWeekDay fromValue(String value) {
    for (final item in ResourcePolicyWeeklyCycleDayOfWeekDay.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyWeeklyCycleDayOfWeekDay value: $value');
  }
}
