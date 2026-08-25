// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot_coldline_and_archival_storage_operations_spike_top_bucket.dart';

class GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpike {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The top buckets contributing to the spike. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucket>> topBuckets;
  /// The total operations count for this prefix.
  final pulumi.Input<String> totalOperationsCount;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpike].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [topBuckets] The top buckets contributing to the spike. Structure is documented below.
  /// [totalOperationsCount] The total operations count for this prefix.
  const GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpike({
    required this.percentageIncrease,
    required this.topBuckets,
    required this.totalOperationsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'topBuckets': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucket>, List<Map<String, dynamic>>>(topBuckets, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalOperationsCount': totalOperationsCount,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpike.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpike(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      topBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucket>(map['topBuckets']!, (value) => GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucket.fromMap((value as Map).cast<String, dynamic>()))),
      totalOperationsCount: pulumi.Input.fromValue(map['totalOperationsCount'] as String),
    );
  }
}
