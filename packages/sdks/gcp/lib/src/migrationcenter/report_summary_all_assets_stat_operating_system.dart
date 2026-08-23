// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_all_assets_stat_operating_system_data_point.dart';

class ReportSummaryAllAssetsStatOperatingSystem {
  /// (Output)
  /// Each data point in the chart is represented as a name-value pair
  /// with the name being the x-axis label, and the value being the y-axis
  /// value.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatOperatingSystemDataPoint>>? dataPoints;

  /// Creates a new [ReportSummaryAllAssetsStatOperatingSystem].
  /// [dataPoints] (Output)
  const ReportSummaryAllAssetsStatOperatingSystem({
    this.dataPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatOperatingSystemDataPoint>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatOperatingSystemDataPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryAllAssetsStatOperatingSystem.fromMap(Map<String, dynamic> map) {
    return ReportSummaryAllAssetsStatOperatingSystem(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatOperatingSystemDataPoint>(guardedValue, (value) => ReportSummaryAllAssetsStatOperatingSystemDataPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
