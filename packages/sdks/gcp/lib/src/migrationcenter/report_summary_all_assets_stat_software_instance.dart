// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_all_assets_stat_software_instance_data_point.dart';

class ReportSummaryAllAssetsStatSoftwareInstance {
  /// (Output)
  /// Each data point in the chart is represented as a name-value pair
  /// with the name being the x-axis label, and the value being the y-axis
  /// value.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatSoftwareInstanceDataPoint>>? dataPoints;

  /// Creates a new [ReportSummaryAllAssetsStatSoftwareInstance].
  /// [dataPoints] (Output)
  const ReportSummaryAllAssetsStatSoftwareInstance({
    this.dataPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatSoftwareInstanceDataPoint>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatSoftwareInstanceDataPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryAllAssetsStatSoftwareInstance.fromMap(Map<String, dynamic> map) {
    return ReportSummaryAllAssetsStatSoftwareInstance(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatSoftwareInstanceDataPoint>(guardedValue, (value) => ReportSummaryAllAssetsStatSoftwareInstanceDataPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
