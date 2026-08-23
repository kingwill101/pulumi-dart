// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_asset_aggregate_stats_response.dart';
import 'report_summary_group_finding_response.dart';

/// Describes the Summary view of a Report, which contains aggregated values for all the groups and preference sets included in this Report.
class ReportSummaryResponse {
  /// Aggregate statistics for all the assets across all the groups.
  final pulumi.Input<ReportSummaryAssetAggregateStatsResponse> allAssetsStats;
  /// Findings for each Group included in this report.
  final pulumi.Input<List<ReportSummaryGroupFindingResponse>> groupFindings;

  /// Creates a new [ReportSummaryResponse].
  /// [allAssetsStats] Aggregate statistics for all the assets across all the groups.
  /// [groupFindings] Findings for each Group included in this report.
  const ReportSummaryResponse({
    required this.allAssetsStats,
    required this.groupFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAssetsStats': pulumi.Input.mapInputValue<ReportSummaryAssetAggregateStatsResponse, Map<String, dynamic>>(allAssetsStats, (value) => value.toMap()),
      'groupFindings': pulumi.Input.mapInputValue<List<ReportSummaryGroupFindingResponse>, List<Map<String, dynamic>>>(groupFindings, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryResponse(
      allAssetsStats: pulumi.Input.fromValue(ReportSummaryAssetAggregateStatsResponse.fromMap((map['allAssetsStats']! as Map).cast<String, dynamic>())),
      groupFindings: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingResponse>(map['groupFindings']!, (value) => ReportSummaryGroupFindingResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
