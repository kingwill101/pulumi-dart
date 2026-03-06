// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_asset_aggregate_stats_response_migrationcenter_v1alpha1.dart';
import 'report_summary_group_preference_set_finding_response_migrationcenter_v1alpha1.dart';

/// Summary Findings for a specific Group.
class ReportSummaryGroupFindingResponseMigrationcenterV1alpha1 {
  /// Summary statistics for all the assets in this group.
  final pulumi.Input<ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1> assetAggregateStats;
  /// Description for the Group.
  final pulumi.Input<String> description;
  /// Display Name for the Group.
  final pulumi.Input<String> displayName;
  /// This field is deprecated, do not rely on it having a value.
  final pulumi.Input<String> overlappingAssetCount;
  /// Findings for each of the PreferenceSets for this group.
  final pulumi.Input<List<ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1>> preferenceSetFindings;

  /// Creates a new [ReportSummaryGroupFindingResponseMigrationcenterV1alpha1].
  /// [assetAggregateStats] Summary statistics for all the assets in this group.
  /// [description] Description for the Group.
  /// [displayName] Display Name for the Group.
  /// [overlappingAssetCount] This field is deprecated, do not rely on it having a value.
  /// [preferenceSetFindings] Findings for each of the PreferenceSets for this group.
  const ReportSummaryGroupFindingResponseMigrationcenterV1alpha1({
    required this.assetAggregateStats,
    required this.description,
    required this.displayName,
    required this.overlappingAssetCount,
    required this.preferenceSetFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetAggregateStats': pulumi.Input.mapInputValue<ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1, Map<String, dynamic>>(assetAggregateStats, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'overlappingAssetCount': overlappingAssetCount,
      'preferenceSetFindings': pulumi.Input.mapInputValue<List<ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(preferenceSetFindings, (value) => pulumi.Input.encodeList<ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingResponseMigrationcenterV1alpha1(
      assetAggregateStats: pulumi.Input.fromValue(ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1.fromMap((map['assetAggregateStats']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      overlappingAssetCount: pulumi.Input.fromValue(map['overlappingAssetCount'] as String),
      preferenceSetFindings: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1>(map['preferenceSetFindings']!, (value) => ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

