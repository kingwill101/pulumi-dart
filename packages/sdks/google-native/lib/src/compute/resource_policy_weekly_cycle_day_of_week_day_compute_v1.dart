/// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
enum ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1 {
  friday("FRIDAY"),
  invalid("INVALID"),
  monday("MONDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY"),
  thursday("THURSDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY");

  const ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1(this.value);
  final String value;

  static ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1 fromValue(String value) {
    for (final item in ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1 value: $value');
  }
}

