/// A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
enum ServiceLevelObjectiveCalendarPeriod {
  calendarPeriodUnspecified("CALENDAR_PERIOD_UNSPECIFIED"),
  day("DAY"),
  week("WEEK"),
  fortnight("FORTNIGHT"),
  month("MONTH"),
  quarter("QUARTER"),
  half("HALF"),
  year("YEAR");

  const ServiceLevelObjectiveCalendarPeriod(this.wireValue);
  final String wireValue;

  static ServiceLevelObjectiveCalendarPeriod fromValue(String value) {
    for (final item in ServiceLevelObjectiveCalendarPeriod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceLevelObjectiveCalendarPeriod value: $value',
    );
  }
}
