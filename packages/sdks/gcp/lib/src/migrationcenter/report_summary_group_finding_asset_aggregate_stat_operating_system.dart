// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_asset_aggregate_stat_operating_system_data_point.dart';

class ReportSummaryGroupFindingAssetAggregateStatOperatingSystem {
  /// (Output)
  /// Each data point in the chart is represented as a name-value pair
  /// with the name being the x-axis label, and the value being the y-axis
  /// value.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint>?>? dataPoints;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStatOperatingSystem].
  /// [dataPoints] (Output)
  const ReportSummaryGroupFindingAssetAggregateStatOperatingSystem({
    this.dataPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStatOperatingSystem.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStatOperatingSystem(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
