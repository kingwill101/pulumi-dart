// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_revisions_revision_snapshot_throttled_requests_spike_top_bucket_contribution_top_prefix.dart';

class GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContribution {
  /// A list of top prefixes contributing to the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix>> topPrefixes;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContribution].
  /// [topPrefixes] A list of top prefixes contributing to the finding. Structure is documented below.
  const GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContribution({
    required this.topPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topPrefixes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix>, List<Map<String, dynamic>>>(topPrefixes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContribution.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContribution(
      topPrefixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix>(map['topPrefixes']!, (value) => GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
