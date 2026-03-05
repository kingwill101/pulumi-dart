/// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
enum ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta {
  friday("FRIDAY"),
  invalid("INVALID"),
  monday("MONDAY"),
  saturday("SATURDAY"),
  sunday("SUNDAY"),
  thursday("THURSDAY"),
  tuesday("TUESDAY"),
  wednesday("WEDNESDAY");

  const ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta(this.wireValue);
  final String wireValue;

  static ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta fromValue(String value) {
    for (final item in ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta value: $value');
  }
}

