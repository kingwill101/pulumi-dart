// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_storage_growth_above_trend_top_bucket.dart';

class GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrendTopBucket>> topBuckets;
  /// The total storage growth in bytes for this bucket.
  final pulumi.Input<String> totalStorageGrowthBytes;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  /// [totalStorageGrowthBytes] The total storage growth in bytes for this bucket.
  const GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend({
    required this.percentageIncrease,
    required this.topBuckets,
    required this.totalStorageGrowthBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrendTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrendTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalStorageGrowthBytes': totalStorageGrowthBytes,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrend(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrendTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotStorageGrowthAboveTrendTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
      totalStorageGrowthBytes: pulumi.Input.fromValue(map['totalStorageGrowthBytes'] as String),
    );
  }
}
