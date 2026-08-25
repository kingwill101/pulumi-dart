// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_asset_aggregate_stat.dart';
import 'report_summary_group_finding_preference_set_finding.dart';

class ReportSummaryGroupFinding {
  /// (Output)
  /// Aggregate statistics for a collection of assets.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStat>?>? assetAggregateStats;
  /// Free-text description.
  final pulumi.Input<String?>? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String?>? displayName;
  /// (Output)
  /// This field is deprecated, do not rely on it having a value.
  final pulumi.Input<String?>? overlappingAssetCount;
  /// (Output)
  /// Findings for each of the PreferenceSets for this group.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFinding>?>? preferenceSetFindings;

  /// Creates a new [ReportSummaryGroupFinding].
  /// [assetAggregateStats] (Output)
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [overlappingAssetCount] (Output)
  /// [preferenceSetFindings] (Output)
  const ReportSummaryGroupFinding({
    this.assetAggregateStats,
    this.description,
    this.displayName,
    this.overlappingAssetCount,
    this.preferenceSetFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetAggregateStats': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStat>, List<Map<String, dynamic>>>(assetAggregateStats, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'overlappingAssetCount': ?overlappingAssetCount,
      'preferenceSetFindings': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFinding>, List<Map<String, dynamic>>>(preferenceSetFindings, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFinding.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFinding(
      assetAggregateStats: (() { final guardedValue = map['assetAggregateStats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStat>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overlappingAssetCount: (() { final guardedValue = map['overlappingAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferenceSetFindings: (() { final guardedValue = map['preferenceSetFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFinding>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
