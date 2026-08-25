// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot_cross_region_egress_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucket>> topBuckets;
  /// The total egress bytes for this prefix.
  final pulumi.Input<String> totalEgressBytes;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  /// [totalEgressBytes] The total egress bytes for this prefix.
  const GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpike({
    required this.percentageIncrease,
    required this.topBuckets,
    required this.totalEgressBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalEgressBytes': totalEgressBytes,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpike(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
      totalEgressBytes: pulumi.Input.fromValue(map['totalEgressBytes'] as String),
    );
  }
}
