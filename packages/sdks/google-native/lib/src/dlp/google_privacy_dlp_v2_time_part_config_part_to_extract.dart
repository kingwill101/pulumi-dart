/// The part of the time to keep.
enum GooglePrivacyDlpV2TimePartConfigPartToExtract {
  timePartUnspecified("TIME_PART_UNSPECIFIED"),
  year("YEAR"),
  month("MONTH"),
  dayOfMonth("DAY_OF_MONTH"),
  dayOfWeek("DAY_OF_WEEK"),
  weekOfYear("WEEK_OF_YEAR"),
  hourOfDay("HOUR_OF_DAY");

  const GooglePrivacyDlpV2TimePartConfigPartToExtract(this.value);
  final String value;

  static GooglePrivacyDlpV2TimePartConfigPartToExtract fromValue(String value) {
    for (final item in GooglePrivacyDlpV2TimePartConfigPartToExtract.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2TimePartConfigPartToExtract value: $value');
  }
}

