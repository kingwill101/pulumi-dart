// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_cross_region_egress_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket>> topBuckets;
  /// The total egress bytes for this prefix.
  final pulumi.Input<String> totalEgressBytes;

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  /// [totalEgressBytes] The total egress bytes for this prefix.
  const GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike({
    required this.percentageIncrease,
    required this.topBuckets,
    required this.totalEgressBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalEgressBytes': totalEgressBytes,
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpike(
      percentageIncrease: pulumi.Input.fromValue(map['percentageIncrease'] as double),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
      totalEgressBytes: pulumi.Input.fromValue(map['totalEgressBytes'] as String),
    );
  }
}
