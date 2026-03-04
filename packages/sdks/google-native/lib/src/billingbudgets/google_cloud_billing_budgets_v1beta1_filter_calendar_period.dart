/// Optional. Specifies to track usage for recurring calendar period. For example, assume that CalendarPeriod.QUARTER is set. The budget will track usage from April 1 to June 30, when the current calendar month is April, May, June. After that, it will track usage from July 1 to September 30 when the current calendar month is July, August, September, so on.
enum GoogleCloudBillingBudgetsV1beta1FilterCalendarPeriod {
  calendarPeriodUnspecified("CALENDAR_PERIOD_UNSPECIFIED"),
  month("MONTH"),
  quarter("QUARTER"),
  year("YEAR");

  const GoogleCloudBillingBudgetsV1beta1FilterCalendarPeriod(this.wireValue);
  final String wireValue;

  static GoogleCloudBillingBudgetsV1beta1FilterCalendarPeriod fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudBillingBudgetsV1beta1FilterCalendarPeriod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudBillingBudgetsV1beta1FilterCalendarPeriod value: $value',
    );
  }
}
