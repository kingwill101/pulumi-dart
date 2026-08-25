// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot_storage_growth_above_trend_top_bucket.dart';

class GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrend {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucket>> topBuckets;
  /// The total storage growth in bytes for this bucket.
  final pulumi.Input<String> totalStorageGrowthBytes;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrend].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  /// [totalStorageGrowthBytes] The total storage growth in bytes for this bucket.
  const GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrend({
    required this.percentageIncrease,
    required this.topBuckets,
    required this.totalStorageGrowthBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalStorageGrowthBytes': totalStorageGrowthBytes,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrend.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrend(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
      totalStorageGrowthBytes: pulumi.Input.fromValue(map['totalStorageGrowthBytes'] as String),
    );
  }
}
