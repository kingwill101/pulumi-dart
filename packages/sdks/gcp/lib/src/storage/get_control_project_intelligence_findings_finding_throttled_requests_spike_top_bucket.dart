// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_throttled_requests_spike_top_bucket_contribution.dart';
import 'get_control_project_intelligence_findings_finding_throttled_requests_spike_top_bucket_error.dart';

class GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket {
  /// The resource name of the bucket.
  final pulumi.Input<String> bucket;
  /// The breakdown of prefixes contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketContribution>> contributions;
  /// Error details if the bucket details cannot be retrieved. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketError>> errors;
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The number of throttled requests for this prefix.
  final pulumi.Input<String> throttledRequests;
  /// The total egress bytes for this prefix.
  final pulumi.Input<String> totalEgressBytes;
  /// The total operations count for this prefix.
  final pulumi.Input<String> totalOperationsCount;
  /// The total storage growth in bytes for this bucket.
  final pulumi.Input<String> totalStorageGrowthBytes;

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket].
  /// [bucket] The resource name of the bucket.
  /// [contributions] The breakdown of prefixes contributing to the spike. Structure is documented below.
  /// [errors] Error details if the bucket details cannot be retrieved. Structure is documented below.
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [throttledRequests] The number of throttled requests for this prefix.
  /// [totalEgressBytes] The total egress bytes for this prefix.
  /// [totalOperationsCount] The total operations count for this prefix.
  /// [totalStorageGrowthBytes] The total storage growth in bytes for this bucket.
  const GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket({
    required this.bucket,
    required this.contributions,
    required this.errors,
    required this.percentageIncrease,
    required this.throttledRequests,
    required this.totalEgressBytes,
    required this.totalOperationsCount,
    required this.totalStorageGrowthBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'contributions': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketContribution>, List<Map<String, dynamic>>>(contributions, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketContribution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'percentageIncrease': percentageIncrease,
      'throttledRequests': throttledRequests,
      'totalEgressBytes': totalEgressBytes,
      'totalOperationsCount': totalOperationsCount,
      'totalStorageGrowthBytes': totalStorageGrowthBytes,
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucket(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      contributions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketContribution>(map['contributions']!, (value) => GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketContribution.fromMap((value as Map).cast<String, dynamic>()))),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketError>(map['errors']!, (value) => GetControlProjectIntelligenceFindingsFindingThrottledRequestsSpikeTopBucketError.fromMap((value as Map).cast<String, dynamic>()))),
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      throttledRequests: pulumi.Input.fromValue(map['throttledRequests'] as String),
      totalEgressBytes: pulumi.Input.fromValue(map['totalEgressBytes'] as String),
      totalOperationsCount: pulumi.Input.fromValue(map['totalOperationsCount'] as String),
      totalStorageGrowthBytes: pulumi.Input.fromValue(map['totalStorageGrowthBytes'] as String),
    );
  }
}
