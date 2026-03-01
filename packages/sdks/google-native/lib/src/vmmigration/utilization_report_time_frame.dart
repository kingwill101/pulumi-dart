/// Time frame of the report.
enum UtilizationReportTimeFrame {
  timeFrameUnspecified("TIME_FRAME_UNSPECIFIED"),
  week("WEEK"),
  month("MONTH"),
  year("YEAR");

  const UtilizationReportTimeFrame(this.value);
  final String value;

  static UtilizationReportTimeFrame fromValue(String value) {
    for (final item in UtilizationReportTimeFrame.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UtilizationReportTimeFrame value: $value');
  }
}

