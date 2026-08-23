// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_storage_growth_above_trend_top_bucket_contribution_top_prefix.dart';

class GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContribution {
  /// A list of top prefixes contributing to the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix>> topPrefixes;

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContribution].
  /// [topPrefixes] A list of top prefixes contributing to the finding. Structure is documented below.
  const GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContribution({
    required this.topPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topPrefixes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix>, List<Map<String, dynamic>>>(topPrefixes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContribution.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContribution(
      topPrefixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix>(map['topPrefixes']!, (value) => GetControlProjectIntelligenceFindingsFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
