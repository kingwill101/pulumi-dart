// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_cross_region_egress_spike_top_bucket_contribution.dart';
import 'get_control_project_intelligence_findings_finding_cross_region_egress_spike_top_bucket_error.dart';

class GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket {
  /// The resource name of the bucket.
  final pulumi.Input<String> bucket;
  /// The breakdown of prefixes contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketContribution>> contributions;
  /// Error details if the bucket details cannot be retrieved. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketError>> errors;
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

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket].
  /// [bucket] The resource name of the bucket.
  /// [contributions] The breakdown of prefixes contributing to the spike. Structure is documented below.
  /// [errors] Error details if the bucket details cannot be retrieved. Structure is documented below.
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [throttledRequests] The number of throttled requests for this prefix.
  /// [totalEgressBytes] The total egress bytes for this prefix.
  /// [totalOperationsCount] The total operations count for this prefix.
  /// [totalStorageGrowthBytes] The total storage growth in bytes for this bucket.
  const GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket({
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
      'contributions': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketContribution>, List<Map<String, dynamic>>>(contributions, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketContribution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'percentageIncrease': percentageIncrease,
      'throttledRequests': throttledRequests,
      'totalEgressBytes': totalEgressBytes,
      'totalOperationsCount': totalOperationsCount,
      'totalStorageGrowthBytes': totalStorageGrowthBytes,
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucket(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      contributions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketContribution>(map['contributions']!, (value) => GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketContribution.fromMap((value as Map).cast<String, dynamic>()))),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketError>(map['errors']!, (value) => GetControlProjectIntelligenceFindingsFindingCrossRegionEgressSpikeTopBucketError.fromMap((value as Map).cast<String, dynamic>()))),
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      throttledRequests: pulumi.Input.fromValue(map['throttledRequests'] as String),
      totalEgressBytes: pulumi.Input.fromValue(map['totalEgressBytes'] as String),
      totalOperationsCount: pulumi.Input.fromValue(map['totalOperationsCount'] as String),
      totalStorageGrowthBytes: pulumi.Input.fromValue(map['totalStorageGrowthBytes'] as String),
    );
  }
}
