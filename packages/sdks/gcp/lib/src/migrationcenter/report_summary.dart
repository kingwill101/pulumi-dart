// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_all_assets_stat.dart';
import 'report_summary_group_finding.dart';

class ReportSummary {
  /// (Output)
  /// Aggregate statistics for a collection of assets.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStat>?>? allAssetsStats;
  /// (Output)
  /// Findings for each Group included in this report.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFinding>?>? groupFindings;

  /// Creates a new [ReportSummary].
  /// [allAssetsStats] (Output)
  /// [groupFindings] (Output)
  const ReportSummary({
    this.allAssetsStats,
    this.groupFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAssetsStats': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStat>, List<Map<String, dynamic>>>(allAssetsStats, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupFindings': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFinding>, List<Map<String, dynamic>>>(groupFindings, (value) => pulumi.Input.encodeList<ReportSummaryGroupFinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummary.fromMap(Map<String, dynamic> map) {
    return ReportSummary(
      allAssetsStats: (() { final guardedValue = map['allAssetsStats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStat>(guardedValue, (value) => ReportSummaryAllAssetsStat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupFindings: (() { final guardedValue = map['groupFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFinding>(guardedValue, (value) => ReportSummaryGroupFinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
