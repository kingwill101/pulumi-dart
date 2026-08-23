// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot_coldline_and_archival_storage_operations_spike_top_bucket_contribution_top_prefix.dart';

class GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContribution {
  /// A list of top prefixes contributing to the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix>> topPrefixes;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContribution].
  /// [topPrefixes] A list of top prefixes contributing to the finding. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContribution({
    required this.topPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topPrefixes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix>, List<Map<String, dynamic>>>(topPrefixes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContribution.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContribution(
      topPrefixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix>(map['topPrefixes']!, (value) => GetControlProjectIntelligenceFindingRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
