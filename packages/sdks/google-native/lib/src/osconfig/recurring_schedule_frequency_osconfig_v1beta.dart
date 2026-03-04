/// Required. The frequency unit of this recurring schedule.
enum RecurringScheduleFrequencyOsconfigV1beta {
  frequencyUnspecified("FREQUENCY_UNSPECIFIED"),
  weekly("WEEKLY"),
  monthly("MONTHLY"),
  daily("DAILY");

  const RecurringScheduleFrequencyOsconfigV1beta(this.wireValue);
  final String wireValue;

  static RecurringScheduleFrequencyOsconfigV1beta fromValue(String value) {
    for (final item in RecurringScheduleFrequencyOsconfigV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RecurringScheduleFrequencyOsconfigV1beta value: $value',
    );
  }
}
