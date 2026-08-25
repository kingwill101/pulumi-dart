// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_throttled_requests_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The number of throttled requests for this prefix.
  final pulumi.Input<String> throttledRequests;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucket>> topBuckets;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [throttledRequests] The number of throttled requests for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike({
    required this.percentageIncrease,
    required this.throttledRequests,
    required this.topBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'throttledRequests': throttledRequests,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpike(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      throttledRequests: pulumi.Input.fromValue(map['throttledRequests'] as String),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
