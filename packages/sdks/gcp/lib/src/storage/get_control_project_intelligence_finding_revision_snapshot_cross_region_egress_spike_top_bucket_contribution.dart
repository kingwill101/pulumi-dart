// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revision_snapshot_cross_region_egress_spike_top_bucket_contribution_top_prefix.dart';

class GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContribution {
  /// A list of top prefixes contributing to the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContributionTopPrefix>> topPrefixes;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContribution].
  /// [topPrefixes] A list of top prefixes contributing to the finding. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContribution({
    required this.topPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topPrefixes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContributionTopPrefix>, List<Map<String, dynamic>>>(topPrefixes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContributionTopPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContribution.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContribution(
      topPrefixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContributionTopPrefix>(map['topPrefixes']!, (value) => GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketContributionTopPrefix.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
