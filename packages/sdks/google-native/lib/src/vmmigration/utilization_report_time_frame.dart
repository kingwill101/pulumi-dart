/// Time frame of the report.
enum UtilizationReportTimeFrame {
  timeFrameUnspecified("TIME_FRAME_UNSPECIFIED"),
  week("WEEK"),
  month("MONTH"),
  year("YEAR");

  const UtilizationReportTimeFrame(this.wireValue);
  final String wireValue;

  static UtilizationReportTimeFrame fromValue(String value) {
    for (final item in UtilizationReportTimeFrame.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UtilizationReportTimeFrame value: $value');
  }
}
