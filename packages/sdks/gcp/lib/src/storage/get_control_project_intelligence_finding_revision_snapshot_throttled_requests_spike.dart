// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot_throttled_requests_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The number of throttled requests for this prefix.
  final pulumi.Input<String> throttledRequests;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucket>> topBuckets;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [throttledRequests] The number of throttled requests for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpike({
    required this.percentageIncrease,
    required this.throttledRequests,
    required this.topBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'throttledRequests': throttledRequests,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpike(
      percentageIncrease: pulumi.Input.fromValue(map['percentageIncrease'] as double),
      throttledRequests: pulumi.Input.fromValue(map['throttledRequests'] as String),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
