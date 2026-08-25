// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_asset_aggregate_stat_software_instance_data_point.dart';

class ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance {
  /// (Output)
  /// Each data point in the chart is represented as a name-value pair
  /// with the name being the x-axis label, and the value being the y-axis
  /// value.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstanceDataPoint>?>? dataPoints;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance].
  /// [dataPoints] (Output)
  const ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance({
    this.dataPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstanceDataPoint>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstanceDataPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStatSoftwareInstance(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatSoftwareInstanceDataPoint>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatSoftwareInstanceDataPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
