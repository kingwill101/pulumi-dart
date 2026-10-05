import 'package:pulumi/pulumi.dart' as pulumi;

/// Time frame of the report.
enum UtilizationReportTimeFrameVmmigrationV1alpha1 implements pulumi.PulumiEnum<String> {
  timeFrameUnspecified("TIME_FRAME_UNSPECIFIED"),
  week("WEEK"),
  month("MONTH"),
  year("YEAR");

  const UtilizationReportTimeFrameVmmigrationV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static UtilizationReportTimeFrameVmmigrationV1alpha1 fromValue(String value) {
    for (final item in UtilizationReportTimeFrameVmmigrationV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UtilizationReportTimeFrameVmmigrationV1alpha1 value: $value');
  }
}
