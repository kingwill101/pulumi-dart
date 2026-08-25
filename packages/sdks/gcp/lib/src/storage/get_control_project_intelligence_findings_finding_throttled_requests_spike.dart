// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_throttled_requests_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The number of throttled requests for this prefix.
  final pulumi.Input<String> throttledRequests;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket>> topBuckets;

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [throttledRequests] The number of throttled requests for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  const GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike({
    required this.percentageIncrease,
    required this.throttledRequests,
    required this.topBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'throttledRequests': throttledRequests,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpike(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      throttledRequests: pulumi.Input.fromValue(map['throttledRequests'] as String),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
