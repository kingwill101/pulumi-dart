import 'package:pulumi/pulumi.dart' as pulumi;

/// Time frame of the report.
enum UtilizationReportTimeFrame implements pulumi.PulumiEnum<String> {
  timeFrameUnspecified("TIME_FRAME_UNSPECIFIED"),
  week("WEEK"),
  month("MONTH"),
  year("YEAR");

  const UtilizationReportTimeFrame(this.wireValue);
  @override
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
