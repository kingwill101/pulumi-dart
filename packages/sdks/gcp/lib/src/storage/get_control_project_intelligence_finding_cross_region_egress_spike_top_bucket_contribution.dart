// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_cross_region_egress_spike_top_bucket_contribution_top_prefix.dart';

class GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContribution {
  /// A list of top prefixes contributing to the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContributionTopPrefix>> topPrefixes;

  /// Creates a new [GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContribution].
  /// [topPrefixes] A list of top prefixes contributing to the finding. Structure is documented below.
  const GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContribution({
    required this.topPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topPrefixes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContributionTopPrefix>, List<Map<String, dynamic>>>(topPrefixes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContributionTopPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContribution.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContribution(
      topPrefixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContributionTopPrefix>(map['topPrefixes']!, (value) => GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketContributionTopPrefix.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
