/// Time frame of the report.
enum UtilizationReportTimeFrameVmmigrationV1alpha1 {
  timeFrameUnspecified("TIME_FRAME_UNSPECIFIED"),
  week("WEEK"),
  month("MONTH"),
  year("YEAR");

  const UtilizationReportTimeFrameVmmigrationV1alpha1(this.value);
  final String value;

  static UtilizationReportTimeFrameVmmigrationV1alpha1 fromValue(String value) {
    for (final item in UtilizationReportTimeFrameVmmigrationV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UtilizationReportTimeFrameVmmigrationV1alpha1 value: $value');
  }
}

