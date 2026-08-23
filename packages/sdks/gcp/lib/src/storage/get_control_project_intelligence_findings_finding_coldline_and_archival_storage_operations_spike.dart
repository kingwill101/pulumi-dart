// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_coldline_and_archival_storage_operations_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucket>> topBuckets;
  /// The total operations count for this prefix.
  final pulumi.Input<String> totalOperationsCount;

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  /// [totalOperationsCount] The total operations count for this prefix.
  const GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike({
    required this.percentageIncrease,
    required this.topBuckets,
    required this.totalOperationsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalOperationsCount': totalOperationsCount,
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpike(
      percentageIncrease: pulumi.Input.fromValue(map['percentageIncrease'] as double),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
      totalOperationsCount: pulumi.Input.fromValue(map['totalOperationsCount'] as String),
    );
  }
}
