// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_coldline_and_archival_storage_operations_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpikeTopBucket>> topBuckets;
  /// The total operations count for this prefix.
  final pulumi.Input<String> totalOperationsCount;

  /// Creates a new [GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  /// [totalOperationsCount] The total operations count for this prefix.
  const GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike({
    required this.percentageIncrease,
    required this.topBuckets,
    required this.totalOperationsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalOperationsCount': totalOperationsCount,
    };
  }

  factory GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpike(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingColdlineAndArchivalStorageOperationsSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
      totalOperationsCount: pulumi.Input.fromValue(map['totalOperationsCount'] as String),
    );
  }
}
